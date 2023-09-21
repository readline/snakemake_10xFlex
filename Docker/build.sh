#!/bin/bash
#
version="7.2.0"
url="https://cf.10xgenomics.com/releases/cell-exp/cellranger-7.2.0.tar.gz?Expires=1695271229&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA&Signature=d7Q2Kz2iNCOiK~~g75OP0L7oF8C6zMpzUqP8JGEvcvON9mUdGyrHEBNDFOqXcwZzHuDmGiBbE4TYMOF-D8CgxwlW2Yb4CAJ9uS7MtHwftK6J8ke43MQRQFYuzEsyO61k74Fzuri-1t79xbwJi5SWoA4yos~iWmr1lpuIOg0n2J8ZFTLdmKBlBjeHbBFHDg2K9Whvg1u7QMJ2br4G4BNfQwB~JNr3YyK~S7rA-h-j~VmS94EnnViQwgOwabrjoWVdj9OW~oI6BGvwHmbApIIrhE7e5-G0OImc9YfMvHs5PXtdBwMKEuUFOwgMcOtAYYDJ2AlSalC92Wcnf5C8fxnRMQ__"

docker build \
    --tag cellranger:${version} \
    --build-arg DOWNLOAD_URL=${url} \
    --build-arg CELLRANGER_VERSION=${version} .
