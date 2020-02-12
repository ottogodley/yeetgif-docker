# yeetgif-docker #

* A Docker image for using [yeetgif](https://github.com/sgreben/yeetgif) without having to worry about building/depedencies *

## Usage ##

This project uses a shell script to handle parsing arguments and passing them to yeetgif inside the docker container. You'll need to provide environment variables specifying where the image you'd like to convert can be found, as well as the specific command you'd like yeetgif to apply:

```env image_file=test.png gif_command="wobble" docker-compose up```

By default, both the `in` and `out` folders in this project are mounted as volumes in the docker container, with `in` being expected to contain the input file, and `out` being where the output gif will be generated to.

For more information on the commands available to you, please see yeetgif's [documentation](https://github.com/sgreben/yeetgif/blob/master/README.md)