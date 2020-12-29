#!/bin/sh

if [ "${RAILS_ENV}" = "production" ]
then
    bundle exec rails assets:precompile
fi

echo 'あああああああ'
echo ${PORT}
echo ${PORT:-3000}
bundle exec rails s -p ${PORT:-3000} -b 0.0.0.0
