FROM ruby:3.0.3

# Install system dependencies
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  curl \
  git

# Install Node.js (v16) and Yarn
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
  apt-get install -y nodejs && \
  npm install --global yarn

# Set build directory
WORKDIR /app

# Install bundler and gems
RUN gem install bundler:2.2.32
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4 --retry 3

# Install yarn dependencies
COPY package.json yarn.lock ./
RUN yarn install --check-files

# Copy the rest of the application
COPY . .

# Copy and configure entrypoint
COPY entrypoint.sh /usr/bin/
RUN sed -i 's/\r$//g' /usr/bin/entrypoint.sh && \
    chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
