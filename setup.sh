#!/bin/bash

# Setup Composer
if [ -x "$(command -v composer)" ]; then
    echo "Configuring composer..."
    composer config --global repositories.procergs_cache composer https://artifactory.des.intra.rs.gov.br/artifactory/api/composer/php-remote
    composer config --global repositories.procergs_private composer https://artifactory.des.intra.rs.gov.br/artifactory/api/composer/php-local
    composer config --global repo.packagist false
fi

# Setup NPM
if [ -x "$(command -v npm)" ]; then
    echo "Configuring npm..."
    npm config set registry https://artifactory.des.intra.rs.gov.br/artifactory/api/npm/npm/
fi

# Setup NuGet
if [ -x "$(command -v nuget)" ]; then
    echo "Configuring nuget..."
    nuget sources Add -Name Artifactory -Source https://artifactory.des.intra.rs.gov.br/artifactory/api/nuget/nuget
fi
