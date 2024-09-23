docker build -t my-pandoc .
docker run --rm -it --entrypoint /bin/sh -v "%cd%/:/data" my-pandoc entrypoint.sh
pause

@REM 