all:

update-call: arbitration-params
	node -e 'var h = require("./helpers"); h.printArbitrationParamUpdateCalls()'

arbitration-params: arbitration-params/kmanr.json arbitration-params/kmancr.json

arbitration-params/kmanr.json: meta-evidence/kmanr-reg.json.ipfspath \
                               meta-evidence/kmanr-clr.json.ipfspath
	jq --arg reg "$$(cat meta-evidence/kmanr-reg.json.ipfspath)" \
	   --arg clr "$$(cat meta-evidence/kmanr-clr.json.ipfspath)" \
	   '.registrationMetaEvidence = $$reg | .clearingMetaEvidence = $$clr' \
	   $@ > $@.tmp && mv $@.tmp $@
arbitration-params/kmancr.json: meta-evidence/kmancr-reg.json.ipfspath \
                                meta-evidence/kmancr-clr.json.ipfspath
	jq --arg reg "$$(cat meta-evidence/kmancr-reg.json.ipfspath)" \
	   --arg clr "$$(cat meta-evidence/kmancr-clr.json.ipfspath)" \
	   '.registrationMetaEvidence = $$reg | .clearingMetaEvidence = $$clr' \
	   $@ > $@.tmp && mv $@.tmp $@

upload: meta-evidence/kmanr-reg.json.ipfspath meta-evidence/kmanr-clr.json.ipfspath \
        meta-evidence/kmancr-reg.json.ipfspath meta-evidence/kmancr-clr.json.ipfspath

meta-evidence: meta-evidence/kmanr-reg.json meta-evidence/kmanr-clr.json \
               meta-evidence/kmancr-reg.json meta-evidence/kmancr-clr.json

meta-evidence/%.ipfspath: meta-evidence/%
	./file-to-ipfs $< > $@.tmp && mv $@.tmp $@
jqcmd = jq -nf $< --arg policyURI "$$(cat policy.pdf.ipfspath)"
meta-evidence/kmanr-reg.json: meta-evidence.jq policy.pdf.ipfspath
	$(jqcmd) --argjson nft true --argjson reg true > $@
meta-evidence/kmanr-clr.json: meta-evidence.jq policy.pdf.ipfspath
	$(jqcmd) --argjson nft true --argjson reg false > $@
meta-evidence/kmancr-reg.json: meta-evidence.jq policy.pdf.ipfspath
	$(jqcmd) --argjson nft false --argjson reg true > $@
meta-evidence/kmancr-clr.json: meta-evidence.jq policy.pdf.ipfspath
	$(jqcmd) --argjson nft false --argjson reg false > $@

policy.pdf.ipfspath: policy.pdf
	./file-to-ipfs $< > $@.tmp && mv $@.tmp $@
policy.pdf: policy.md
	pandoc -V geometry:margin=1in $< -o $@

.PHONY: all update-call arbitration-params meta-evidence upload
