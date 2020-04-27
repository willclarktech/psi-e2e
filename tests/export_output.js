const psi = require("./").default;

const { bloomFilter } = psi.dataStructure;
const filter = bloomFilter.from([1, 2, 3, 4, 5]);
// const exported = JSON.stringify(filter.export())
const exported = JSON.stringify({
    type: "0.1.0",
    content: "FVBBARa6EAAAAAAAAAAAAAA=",
});

console.log(exported);
