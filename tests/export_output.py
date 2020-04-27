import json
from psi.datastructure import bloom_filter

filter = bloom_filter.build_from([b"1", b"2", b"3", b"4", b"5"])
# exported = json.dumps(filter.export())
exported = json.dumps({
    "type": "0.1.0",
    "content": "FVBBARa6EAAAAAAAAAAAAAA=",
})

print(exported)
