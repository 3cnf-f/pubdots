apt install -y --no-install-recommends pipx
pipx ensurepath && \
pipx install pyright &&\
pipx install python-lsp-server &&\
pipx install python-lsp-black --include-deps &&\
pipx install pylyzer &&\
