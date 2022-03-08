all: meta-evidence

meta-evidence: meta-evidence/kmanr-reg.json meta-evidence/kmanr-clr.json \
               meta-evidence/kmancr-reg.json meta-evidence/kmancr-clr.json

meta-evidence/kmanr-reg.json: meta-evidence.jq
	jq -nf $< --argjson nft true --argjson reg true > $@
meta-evidence/kmanr-clr.json: meta-evidence.jq
	jq -nf $< --argjson nft true --argjson reg false > $@
meta-evidence/kmancr-reg.json: meta-evidence.jq
	jq -nf $< --argjson nft false --argjson reg true > $@
meta-evidence/kmancr-clr.json: meta-evidence.jq
	jq -nf $< --argjson nft false --argjson reg false > $@

.PHONY: all meta-evidence
