FROM timbru31/ruby-node:2.7

ENV REVIEWDOG_VERSION=v0.9.17

SHELL ["/bin/bash", "-eo", "pipefail", "-c"]

RUN wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh| sh -s -- -b /usr/local/bin/ ${REVIEWDOG_VERSION}

RUN gem install -N rubocop -v "${RUBOCOP_VERSION}" rubocop-rails -v "${RUBOCOP_RAILS_VERSION}" rubocop-faker -v "${RUBOCOP_FAKER_VERSION}" rubocop-performance -v "${RUBOCOP_PERFORMANCE_VERSION}" brakeman -v "${BRAKEMAN_VERSION}"
RUN yarn add stylelint@"${STYLELINT_VERSION}" eslint@"${ESLINT_VERSION}"

COPY lib /action/lib

ENTRYPOINT ["/action/lib/entrypoint.sh"]
