##Parallel testing with Behat + Gearman + Docker

1. Move `dockman` somewhere on your `PATH`

2. Copy the following files to your project's root directory:

    - `Dockerfile`

    - `.dockman.yml`

    - `behat-client.yml.tpl`

    - `behat-worker.yml.tpl`

    - `dockman-bahat.sh`

3. Run `docker build -t a-data-container-name .` to create your data container

4. Update `.dockman.yml` with your image names including `a-data-container-name`

5. Update `behat-client.yml.tpl` + `behat-worker.yml.tpl` according to your behat config

6. Add any custom runtime commands you need to boostrap your particular application to `dockman-behat.sh`

7. Run `dockman n` to run your behat suite across `n` workers
