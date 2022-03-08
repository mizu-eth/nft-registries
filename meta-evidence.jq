# Arguments:
# - nft: true: NFT registry, false: NFT collection registry
# - reg: true: registration metaevidence, false: clearing metaevidence

def reg: $reg;
def nft: $nft;

def tcrTitle: if nft then "Authentic NFTs" else "Authentic NFT Collections" end;
def itemName: if nft then "nft" else "nft collection" end;

{
  "title": "\(if reg then "Add" else "Remove" end) a \(itemName) \(if reg then "to" else "from" end) \(tcrTitle)",
  "description": "Someone requested to \(if reg then "add" else "remove" end) a \(itemName) \(if reg then "to" else "from" end) \(tcrTitle)",
  "rulingOptions": {
    "titles": [
      "Yes, \(if reg then "Add" else "Remove" end) It",
      "No, Don't \(if reg then "Add" else "Remove" end) It"
    ],
    "descriptions": [
      "Select this if you think the \(itemName) \(if reg then "complies with the required criteria and should be added" else "does not comply with the required criteria and should be removed" end).",
      "Select this if you think the \(itemName) \(if reg then "does not comply with the required criteria and should not be added" else "complies with the required criteria and should not be removed" end)."
    ]
  },
  "category": "Curated Lists",
  "question": "Does the \(itemName) comply with the required criteria?",
  "fileURI": "/ipfs/QmVntT2i7MkxDVhe5XVRQZyRBtdPyBKWajytFQ39C5AFZs/policy0.3.pdf",
  "evidenceDisplayInterfaceURI": "/ipfs/QmNhJXtMrxeJu4fpchPruGrL93bm2M4VmDZ8pj4x6FqnHJ/index.html",
  "metadata": {
    "tcrTitle": tcrTitle,
    "tcrDescription": "A list of authentic \(itemName)s",
    "columns": [
      {
        "label": "Thumbnail",
        "description": (if nft then "The NFT's thumbnail" else "A thumbnail representative of the collection" end),
        "type": "image",
        "isIdentifier": false
      },
      {
        "label": "Name",
        "description": "Official name of the \(if nft then "NFT" else "collection" end)",
        "type": "text",
        "isIdentifier": true
      },
      {
        "label": "Author",
        "description": "Author's name\(if nft then "" else " if relevant" end)",
        "type": "text",
        "isIdentifier": true
      },
      {
        "label": "Collection",
        "description": "The collection's address",
        "type": "address",
        "isIdentifier": true
      },
      (if nft then {
        "label": "Token ID",
        "description": "The token ID",
        "type": "number",
        "isIdentifier": true
      } else empty end),
      {
        "label": "Chain ID",
        "description": "The ID of the chain on which the \(if nft then "NFT" else "collection" end) resides",
        "type": "number",
        "isIdentifier": true
      },
      {
        "label": "Proof",
        "description": "Optional proof of authenticity",
        "type": "file",
        "allowedFileTypes": "pdf txt"
      },
      {
        "label": "Attribution",
        "description": "Optional attribution",
        "type": "text"
      }
    ],
    "itemName": "\(itemName)",
    "itemNamePlural": "\(itemName)s",
    "logoURI": "/ipfs/QmVNQsfSt1NTnGPANbpANsacnLRPNowcwD2LVNkGnqgLQU/list.svg",
    "requireRemovalEvidence": true,
    "isTCRofTCRs": false,
    "relTcrDisabled": true
  }
}
