> **DEPRECATED**: This is a very old Phoenix demo that uses `mix phoenix.new` (Phoenix 1.2 era) and an outdated Dockerfile. The Phoenix framework has changed significantly since then, and Clever Cloud now offers a native Elixir runtime, making Docker unnecessary for Phoenix apps. This example is no longer maintained and is kept only for reference purposes.

# Elixir app demo

This is a sample `phoenix` app, created by typing `mix phoenix.new` in a
terminal.

## Deploying on Clever Cloud

You can deploy this app on Clever Cloud with the docker runtime.

If it's your first clever cloud docker application, please have a look at the
documentation: <https://www.clever-cloud.com/doc/docker/docker>

In a nutshell:

 - create a docker application
 - `git remote add clever <git remote url>`
 - git push clever master
