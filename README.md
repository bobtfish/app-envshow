# Environment show app

Built from a tiny perl script and the heroku buildpack, just dumps out the environment it sees as text.

Exposes port 5000 for the app, can be handy for debugging.

    docker pull bobtfish/app-envshow
    docker run -d --link some_other_container:to_show_link_env_for 5000 bobtfish/app-envshow

