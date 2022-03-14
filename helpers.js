const Web3 = require('web3')
const provider = 'https://dai.poa.network'
const web3Provider = new Web3.providers.HttpProvider(provider)
const web3 = new Web3(web3Provider)

const lgtcrAbi = JSON.parse(fs.readFileSync('abi/LightGeneralizedTCR.json'))
const kmanr = new web3.eth.Contract(lgtcrAbi, '0xD5994f15BE9987104D9821AA99d1C97227c7C08c')
const kmancr = new web3.eth.Contract(lgtcrAbi, '0x2f19f817bbf800b487b7f2e51f24ad5ea0222463')

const tbAbi = JSON.parse(fs.readFileSync('abi/TransactionBatcher.json'))
const transactionBatcher = new web3.eth.Contract(tbAbi, '0xA73A872eFD768bb23efb24CEeB9e330bcCA259D6')

async function currentArbitrationParams(registry) {
    const arbitrator = await registry.methods.arbitrator().call()
    const arbitratorExtraData = await registry.methods.arbitratorExtraData().call()

    const meIndex = (Number(await registry.methods.metaEvidenceUpdates().call()) - 1) * 2
    const metaEvidences = await registry.getPastEvents('MetaEvidence', {
            fromBlock: 20500000,
            filter: {'_metaEvidenceID': [meIndex, meIndex + 1]}})
    if (metaEvidences.length !== 2) {
        console.error('Bad MetaEvidence: ', metaEvidences)
        throw 'Bad MetaEvidence'
    }
    const meValues = metaEvidences.map(x => x.returnValues)
    if (meValues[0]._metaEvidenceID != meIndex || meValues[1]._metaEvidenceID != meIndex + 1) {
        console.error(`MetaEvidence IDs don't match. Should be [${meIndex}, ${meIndex + 1}]:`,
                      metaEvidence)
        throw 'Bad MetaEvidence'
    }
    const registrationMetaEvidence = meValues[0]._evidence
    const clearingMetaEvidence = meValues[1]._evidence

    return {arbitrator, arbitratorExtraData, registrationMetaEvidence, clearingMetaEvidence}
}

function changeArbitrationParamsCallFromFile(registry, jsonFile) {
    var params = JSON.parse(fs.readFileSync(jsonFile))
    return registry.methods.changeArbitrationParams(
                params.arbitrator,
                params.arbitratorExtraData,
                params.registrationMetaEvidence,
                params.clearingMetaEvidence)
}

function updateArbitrationParamsCall() {
    var kmanrUpdate = changeArbitrationParamsCallFromFile(kmanr, "arbitration-params/kmanr.json")
                        .encodeABI()
    var kmancrUpdate = changeArbitrationParamsCallFromFile(kmancr, "arbitration-params/kmancr.json")
                        .encodeABI()
    return transactionBatcher.methods.batchSend(
                [kmanr.options.address, kmancr.options.address],
                [0, 0],
                [kmanrUpdate, kmancrUpdate])
}

module.exports = {
    web3,
    kmanr,
    kmancr,
    transactionBatcher,
    currentArbitrationParams,
    changeArbitrationParamsCallFromFile,
    updateArbitrationParamsCall
}
