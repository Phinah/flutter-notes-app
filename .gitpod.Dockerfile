FROM gitpod/workspace-full

# Install Flutter
RUN git clone https://github.com/flutter/flutter.git -b stable /home/gitpod/flutter
ENV PATH="/home/gitpod/flutter/bin:/home/gitpod/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Precache web
RUN flutter precache --web

# Enable web support
RUN flutter config --enable-web

# Accept Android licenses (even if not used)
RUN yes | flutter doctor --android-licenses

RUN flutter doctor -v
