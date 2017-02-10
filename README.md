# merijntjetak/docker-latex-moderncv

This image will take a .tex file, apply the [ModernCV](http://www.latextemplates.com/template/moderncv-cv-and-cover-letter) class and generate a PDF. 

## Usage
Run the Docker image with the following command in your LaTeX project directory:
```
  docker run -ti -v $(PWD):/data merijntjetak/latex-moderncv filename.tex
```

The Docker image will output the texi2pdf interpreter output. The following files will be generated:
```
./filename.pdf
./filename.tex
./filename.log
./filename.out
./filename.aux
```
A verified working example file (`example.tex`) is available in the repository.

## Development
The `make.sh` script is available for building, running and publishing the image. When using the script, make sure to update the variables in the top section.
