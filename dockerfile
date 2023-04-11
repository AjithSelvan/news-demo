FROM golang:1.20

# Set the Current Working Directory inside the container
#WORKDIR $GOPATH/src/github.com/codefresh-contrib/go-sample-app

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY . .

# Download all the dependencies
# RUN go get -d -v ./...

# Install the package
# RUN go install -v ./...

RUN go build

# This container exposes port 8080 to the outside world
EXPOSE 3000

# Run the executable
CMD ["./news-demo"]
