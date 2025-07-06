FROM gitpod/workspace-full

# Install Flutter from GitHub
RUN git clone https://github.com/flutter/flutter.git -b stable /home/gitpod/flutter

# Add Flutter to PATH
ENV PATH="/home/gitpod/flutter/bin:/home/gitpod/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Enable web and precache
RUN flutter config --enable-web
RUN flutter precache --web
RUN flutter doctor
