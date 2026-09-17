FROM mcr.microsoft.com/devcontainers/base:ubuntu

ARG TEXLIVE_MIRROR="https://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet"

RUN apt-get update && apt-get install -y --no-install-recommends \
    git wget ghostscript inkscape\
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# TeX Liveの公式インストール
WORKDIR /opt/texlive_install
COPY ./texlive.profile ./texlive.profile
RUN wget ${TEXLIVE_MIRROR}/install-tl-unx.tar.gz && \
    tar -xzf install-tl-unx.tar.gz --strip-components=1 && \
    rm install-tl-unx.tar.gz && \
    ./install-tl -profile texlive.profile && \
    ln -sf /usr/local/texlive/*/bin/* /usr/local/texlive/bin

# TeX Liveのパスを環境変数に追加
ENV PATH="/usr/local/texlive/bin:${PATH}"

# # 必要なTeX Liveパッケージのみをtlmgrで導入
RUN tlmgr install \
    latexmk \
    newtx \
    multirow \
    fontaxes

# コンテナ起動時のデフォルト動作
CMD ["bash"]
