FROM gitpod/workspace-full
RUN curl https://run.spawn.cc/install | sh
ENV PATH="${HOME}/.spawnctl/bin:${PATH}"
