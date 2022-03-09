# Kleros Minimal Authentic NFT Registry and Kleros Minimal Authentic NFT Collection Registry Policy

The Kleros Minimal Authentic NFT Registry (KMANR) and Kleros Minimal Authentic NFT Collection Registry (KMANCR) are lists of authentic NFTs and NFT collections respectively.

The purpose of these registries is to provide some level of verification that the works accepted therein were minted with the consent of their creators as well as a few other side benefits.

## Preamble

This preamble seeks to clarify the purpose and methodology behind the registry policy. It does not define any of the rules of the registry and so may generally be skipped. As per Kleros' general court policy, it may however be used as an aid in determining the spirit of the policy so as to resolve edge cases.

### Methodology

From most to least prioritized, these were the directing principles in the drafting of this policy:
1. This policy should not be responsible for any significant loss of artistic freedom.
2. NFTs certified through this registry should be minted by the author or with the author's direct or indirect consent. It should not be possible to pass off another's work as one's own.
3. NFTs certified through this registry should be clearly and unambiguously unique within the bounds explicitly or implicitly defined by the minter at the time the NFTs were put on the market.
4. This policy should be acceptable to as many people as possible and therefore minimal. It is highly encouraged that platforms wishing to impose or offer stricter policies create their own Kleros curated registries. These registries may take the form of badges to be applied to entries already accepted in the KMANR. In any case, it is recommended that conformance with the KMANR policy be a prerequisite for inclusion. Of particular note, this policy does not seek to emulate copyright and indeed does not guarantee compliance with copyright law at all. It remains the responsibility of each platform to ensure they are compliant with the law of the jurisdictions in which they operate (e.g. by responding to DMCA takedown requests and so on). Conversely, compliance with copyright law does not guarantee compliance with this policy.

### KMANR vs KMANCR

The only reason for the existence of the KMANCR is to simplify the registration of a whole collection of works by a creator or a trusted group. For instance, it would not make a lot of sense to register each bored ape into the KMANR individually. When platforms wish to check the authenticity of an NFT (c, t), where c is the collection and t the token ID, they should consider the NFT authentic if either (c, t) is included in the KMANR or c is included in the KMANCR.

### Inclusion Criteria Summary

To summarize section I.A., an NFT must must broadly follow the following rules to be accepted in the KMANR:
1. It must be minted with the consent of the content's legitimate owners.
2. It must be meaningfully different from preceding works.
3. If it is derivative, proper attribution must be provided.
4. These requirements do not expire as a work ages or after the author's death.
5. All NFTs of the same work must be minted as part of the same batch unless otherwise agreed.

Note: One should be careful not to confuse the concepts of the owner of a work and of the owner of an NFT.

### Attribution Rationale

Since this policy is quite lenient regarding the minting of derivative works, it is important to prevent anyone minting derivative works from explicitly or implicitly claiming the credit for the work they derived from. The attribution requirements of this policy being quite strict, in order not to penalize good faith omissions or errors at the time of minting, attribution is to be given in the attribution field of the registry, rather than requiring it in the NFT's description for instance. In that way, even an NFT lacking correct attribution may be eligible for inclusion if full attribution is provided in the registry itself.
For collectors, attribution should be a major factor when pricing an NFT, so it is very highly recommended that all NFT platformsintegrating with these registries display the attribution field at least as prominently as the NFT's description. This attribution information might also help when trying to determine whether to accept an NFT in a registry with a stricter policy.

### Submission Rights Rationale

Note that this policy does not require the NFTs to be submitted by their minters. This is deliberate so as to allow owners of unregistered NFTs to register them themselves and to be able to display or resell them on platforms requiring such registration. One might also want to submit an NFT for inclusion in the registry before purchasing it if one has doubts about its authenticity, as a way to outsource the verification work.

### Smart Contract Verification Rationale

There is no requirement for ERC-721 or ERC-1155 compliance or even that the collection smart contracts be non-malicious. This is because evaluating these two points would require the use of a more expensive technical court, therefore increasing the required deposit. Another collection registry for that purpose could quite easily be created however.

## I. Inclusion criteria

### A. Kleros Minimal Authentic NFT Registry

1. An NFT is eligible for inclusion in the KMANR if it was minted by its content's legitimate owner or by a person authorized to do so by the owner of said content. A person is considered to be the legitimate owner of a work for the purpose of this policy if:
   a. they are the author of the work and have not foregone their right to the work through an informed non-coercive agreement; or
   b. they have been given ownership of the work (including an at least implicit right to mint NFTs) by a previous owner of the work through an informed non-coercive agreement and have not since foregone their right to the work through an informed non-coercive agreement.
   An agreement would be considered to be coercive for the purpose of this policy if it were made under threat of violence or in opposition to one of the party's human rights. So for instance, if a country were to enact a law requiring all rights to its citizens' works be transferred to the king, this king would not be considered a legitimate owner of these works for the purpose of this policy.
   An agreement is considered informed for the purpose of this policy if it is made between parties in full possession of their mental faculties. A person in a fairly advanced stage of Alzheimer's disease would for instance not be considered able to conclude an informed agreement.
   The word person here does not only refer to natural persons but also to companies, associations, institutions, DAOs, and so on.
   In case a work has multiple owners, all owners must agree to the minting of NFTs of that work for them to be accepted in the registry unless they have all agreed to another arrangement beforehand. Persons having substantially worked together on a work will be considered the initial co-owners of the work unless there is an agreement otherwise (e.g. as part of an employment contract).

2. If the content of an NFT is not meaningfully different from another existing work that predates it (whether or not it has been released as an NFT), it must be rejected. Since it is near impossible to define a concept of meaningful difference, examples are provided below which should be interpolated and extrapolated as necessary —and using common sense— to generate new judgements:
   a. An exact copy of an existing work is to be rejected.
   b. A copy of an existing work with subtle, or low effort and non-satirical, modifications is to be rejected.
   c. A mirrored or rotated copy of an existing work is to be rejected.
   d. A mere algorithmic filter or distortion applied to an existing work is to be rejected.
   e. A copy of a drawing, even if redrawn from scratch, is to be rejected if it is not easily distinguishable from the original without comparing both side by side.
   f. Fan art is to be accepted as long as it does not fall into case e.
   g. A cover of a piece of music is to be accepted as long as it is clearly different from the original performance.

3. If the NFT's content is derivative of a work not owned by the same owner and this fact cannot be expected to be immediately obvious to most viewers of the NFT, then, unless the work has no known or distinct author (e.g. folk art), attribution of the work must be provided in the attribution field (II.A.8., II.B.7.). The following examples should be used as a basis for further judgements:
   a. An interpretation or reinterpretation of a musical composition must come with attribution to the composer, unless it would be immediately recognizable to most viewers of the NFT (e.g. the first movement of Beethoven's 5th Symphony).
   b. The use of an image as a background must come with attribution to the work or the artist, unless it would be immediately recognizable to most viewers.
   c. A photo taken in a museum would not require attribution for the works in frame unless one is likely to be lead to erroneously believe that these were the photographer's own works.
   d. A photo containing buildings does not require attribution to the buildings' architects.
   e. Fan art must be provided with a mention of the work it is based on.
   f. Imitating a work's style or an artist's style does not require any attribution.
   g. Reusing a technique from another work does not require attribution.
   h. Reusing a short melodic or rhythmic segment, a harmonic arrangement, a timbre, or other similar elements of a musical work, in a larger work (i.e. a work larger than any of these elements) does not require attribution if they are reused without making use of the original recording or a part thereof.

4. These rules apply to works created at any time in history. This means that an NFT of the Mona Lisa can never be accepted in this registry. Similarly an NFT of a work by a recently deceased artist cannot be included in this registry even with the approval of their estate or heirs unless the artist consented to it before their death, following the conditions laid out in 1.

5. Section 2. does not apply when a work's owner derives from that work if:
   a. the original work was not previously minted as an authentic NFT or all such NFTs were burned; or
   b. the original work's authentic NFTs were still in the possession of the minter and not up for sale or auction when the deriving work was minted, and the deriving work's NFTs would have been easily visible to potential purchasers of the original NFTs (e.g. all the NFTs were minted on the same platform from the same account); or
   c. it was otherwise made clear to all potential purchasers of the original work's authentic NFTs that this work might be reused in the manner in which it is being used by the deriving work (e.g. by explaining this in the original NFT's description); or
   d. none of the authentic NFTs of the work or works not meaningfully different by the terms of section 2. were up for sale or auction at the time of minting the new NFT, and all of these NFTs' owners agreed to the minting.
   In all other cases, section 2. applies and a work's owner may no longer mint NFTs of the work or a work not meaningfully different from it by the terms of section 2.
   In cases c. and d. the attribution field of the new NFTs must mention the original NFTs for the new NFTs to be accepted into the registry.
   In case d., the attribution fields of the original NFTs must mention the new NFTs for the original NFTs to be accepted into the registry. If these were already registered in the KMANR without said attribution, they may be removed.
   An NFT is to be considered authentic for the purpose of this section if it complies with section 1., 2., and 4.

### B. Kleros NFT Collection Registry

1. For a collection to be accepted in the KMANCR, all of its NFTs must conform to the rules of the KMANR and it must be unlikely for invalid NFTs to make it into the collection.

2. If an NFT in the collection requires specific attribution, that NFT must be registered individually in the KMANR before it is put up for sale or auction or the collection is to be rejected or removed until the situation is resolved.

3. If a collection is found to contain an invalid NFT or control of the collection's minting process is lost to an untrustworthy party, the collection may be removed.

4. As a consequence of rule 1., collections of open or semi-open NFT marketplaces must not be accepted in this registry. This applies to invite-only NFT marketplaces where the invitations are given by existing members without a very strict review process.

## II. Fields

### A. Kleros Minimal Authentic NFT Registry

Following are the fields of each entry in the KMANR. Detailed rules for these fields are provided below.

1. Thumbnail (image): A thumbnail of the NFT
2. Name (text, indexed): Official name of the NFT
3. Author (text, indexed): Author's name
4. Collection (address, indexed): The collection's address
5. Token ID (number, indexed): The token ID
6. Chain ID (number, indexed): The chain ID of the network on which the NFT resides
7. Proof (file, pdf or txt): Optional proof of authenticity
8. Attribution (long text): Optional attribution

#### 1. Thumbnail

A compressed image of the content must be provided. The purpose of this "thumbnail" is to provide a cheap to distribute and load yet verified version or visualisation of the original file. The webp format being extremely efficient, (as well as open, and well supported by all major web browsers), we can afford to make these "thumbnails" 1080p in most cases.

1. The file must be provided as an IPFS link (/ipfs/[...], as per the official UI).
2. It must be in the webp format (.webp extension).
3. Its size must not exceed 500kB (500,000 bytes).
4. It must not exceed 1920 pixels in width or height.
5. Its quality must not be remarkably lower than the quality achievable by the most common free and open-source encoders within the size limit of 500kB.
6. If the content is an image: if it fits within a 1920x1920 pixel square, its dimensions must be preserved, otherwise, the dimensions must be reduced so that the width or the height, whichever is larger, is reduced to 1920 pixels. The width and height may however be reduced further if that is necessary to fit the 500kB file size limit without causing extreme artefacting.7. If the original file is a video or an animated image file (e.g. gif, webp), an animated webp of the full animation may be provided as thumbnail if feasible within the file size limit. Alternatively, a single frame which could reasonably be considered representative of the animation may be used instead (e.g. not a black transition frame).
8. The aspect ratio must be preserved and no effect or modification other than resizing (within the limits of point 6.) may be applied. However, if the image is extremely long or tall (e.g. more than 2 pages of a comic strip assembled on top of each other or side by side), the thumbnail may be cropped to only show the beginning.
9. If the content is a 3D model, a representative render of the model must be provided. If such a render has been provided by the NFT creator through metadata or the minting platform, that render must be used.
10. If the content is audio only, image metadata (e.g. album art) or the image used to present the audio clip on the minting platform must be used if any such image exists.
11. If the content is text, an image of the first meaningful page of text must be used. If the font is not defined by the medium, a neutral, unremarkable font must be used (e.g. Arial, not Comic Sans). A blank page or a page containing only copyright information would not be considered meaningful unless that is the entire text. A page containing the title or the start of the main text would be. If the text is a book or has a cover for any reason, that cover must be used instead.
12. In other cases, when a canonical image representation of the NFT exists, it must be used.
13. In cases not covered above, common sense, interpolation, and extrapolation of these rules must be used on a best effort basis. Unnecessary personalization must however never be introduced. Simplicity and sobriety must be given priority. For instance, a pure black thumbnail might often be the most appropriate choice.
14. In no case must the thumbnail itself violate the authentic authorship requirement. For instance, if there is evidence album art was used without permission from the artist, that album art may not be used and evidence must be provided to that effect in the "proof" field.

#### 2. Name

The official name of the NFT.

1. The name field must be encoded as UTF-8.
2. Excessive unicode ornamentation may not be used, even if used in the official name.

#### 3. Author

The name the author of the contents used when publishing the work.

1. The author field must be encoded as UTF-8.
2. Excessive unicode ornamentation may not be used, even if the author usually styles their name in such a way.
3. If there are multiple authors, the main author (e.g. the minter of the NFT) must appear first within a comma-delimited list of authors (specifically, delimited by a comma followed by a space, e.g. "A, B, C"). A group name is to be preferred instead if well established. If there are a great number of authors, an ellipsis may be used (e.g. "A, B, [...], ...").
4. When it is unclear which name to use (e.g. different name on twitter/instagram and on the NFT minting platform) and an NFT by the same author has already been submitted, the existing choice must be respected for consistency. This does not apply if the author no longer uses the already registered name.

#### 4. Collection

The address of the NFT collection.

#### 5. Token ID

The token ID of the NFT being registered within the collection.

#### 6. Chain ID

This field must contain the chain ID of the EVM blockchain on which the NFT resides (e.g. 1 for Ethereum, 100 for Gnosis Chain). For informational purposes, a list of chain IDs may for instance be found here: https://chainlist.org/. This website is not to be considered authoritative however.

**For now, only Ethereum is allowed, so the value must be 1 (and the NFT must reside on the Ethereum chain).**

#### 7. Proof

The proof field must be used to provide proof that minting of the NFT was authorized by the author when this is not obvious or if there are reasons to be suspicious.

1. The file must be provided as an IPFS link (/ipfs/[...], as per the official UI).
2. It must be in pdf or txt format (.pdf or .txt extension).
3. Its size must not exceed 1MB (1,000,000 bytes).
4. The proof must be in English. Translations may be provided when necessary. Any non-English text must be provided in a form that is selectable and copyable (i.e. not only as an image) to make checking the translation easier.

Such a proof can for instance be in the form of a public message written by an account the author is known to control (e.g. tweet, blog post), in which case a screenshot and a live link must be provided.

In most cases, a proof will not be needed. For instance, if the NFT was minted by the author themselves on a reputable NFT platform in which the author's Twitter account has been verified, or if the author's website links back to the author's NFT collection. On the other hand, if the minter's social media account or website has only recently been active or publishing works, this would be considered cause for suspicion and further proof must be provided at the time of submission, in the form of progress photos or snapshots for instance.

#### 8. Attribution

Attribution for works the NFT's content derives from, as per I.A.3..

1. Each entry must be on a separate line.
2. Attribution must be provided in English but names and titles may be left in their original language.
3. A reasonable effort must be made to make the attribution unambiguous and if possible, it must be easy to find more details about the work from a web search of the attribution's text.
4. It is recommended to provide attribution in the description or title of the NFT as well and if an attribution error has been made in the NFT's description, title, or content, this must be explicitly pointed out and corrected in the attribution field.

### B. Kleros Minimal Authentic NFT Collection Registry

Following are the fields of each entry in the KMANCR. Detailed rules for these fields are provided below.

1. Thumbnail (image): A thumbnail representative of the collection
2. Name (text, indexed): Official name of the collection
3. Author (text, indexed): Author's name if relevant
4. Collection (address, indexed): The collection's address
5. Chain ID (number, indexed): The chain ID of the network on which the NFT resides
6. Proof (file, pdf or txt): Optional proof of authenticity
7. Attribution (long text): Optional attribution

#### 1. Thumbnail

1. If the collection has a canonical thumbnail, that one must be used.
2. If not, a work representative of the collection must be selected (for instance, the one sold for the highest price) and used.
3. The rules are otherwise the same as A.1. but the file size is reduced to 100kB and the maximum dimensions to 480x480.

#### 2. Name

The canonical name of the collection. The same rules as for A.2. apply.

#### 3. Author

If the collection has a specific author or limited set of authors, this field must be filled using the same rules as A.3. Otherwise, it must be left empty.

#### 4. Collection

The address of the NFT collection.

#### 5. Chain ID

Same as A.6.

**For now, only Ethereum is allowed, so the value must be 1 (and the NFT collection must reside on the Ethereum chain).**

#### 6. Proof

If a proof would be needed to include any of the NFTs in this collection into the KMANR, a document must be provided here with relevant proofs —except for NFTs already registered in the KMANR— following the same rules as A.7. except that the maximum file size is increased to 5MB.

#### 7. Attribution

As per I.A.3., attribution information relevant to most NFTs in the collection must be provided here following the same rules as A.8.., except for NFTs already registered in the KMANR. If only one or a few NFTs in the collection are affected by some attribution, they must be registered in the KMANR with proper attribution or the collection will not be eligible for inclusion into the KMANCR or will become eligible for removal.
