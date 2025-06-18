FROM ubuntu:noble

# Set non-interactive mode for apt
ENV DEBIAN_FRONTEND=noninteractive

# Install build dependencies and runtime libraries
RUN apt-get update && apt-get install -y \
    gcc \
    make \
    automake \
    autoconf \
    libncurses-dev \
    gettext \
    pkg-config \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a directory for our application
WORKDIR /app

# Copy the source code
COPY . .

# Build the application
RUN ./configure && make install

# Create a runtime stage with minimal dependencies
FROM ubuntu:noble

# Install runtime dependencies
RUN apt-get update && apt-get install -y \
    libncurses6 \
    gettext \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a directory for our application
WORKDIR /app

# Copy the compiled binary and necessary files from the build stage
COPY --from=0 /app/src/typespeed /app/src/typespeed
COPY --from=0 /app/etc/typespeedrc /app/etc/
COPY --from=0 /app/rules /app/rules/
COPY --from=0 /app/words /app/words/

# Set environment variables
ENV PATH="/app/src:${PATH}"

# Run the application
CMD ["typespeed"]
