# ProxyChainRb

ProxyChainRb is a wrapper around the Node.JS library [proxy-chain](https://github.com/apifytech/proxy-chain).

It enables you to tunnel proxies that require authentication via a non-auth proxy started on localhost (making it possible to use authenticated proxies in e.g. Chrome and Firefox via Selenium).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'proxy_chain_rb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install proxy_chain_rb

## Usage

```ruby
real_proxy        =   "http://username:password@host:port"
server            =   ProxyChainRb::Server.new
generated_proxy   =   server.start(real_proxy)
# use generated_proxy as the proxy when opening new connections in your code
# when you're done:
server.stop
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SebastianJ/proxy_chain_rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ProxyChainRb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/SebastianJ/proxy_chain_rb/blob/master/CODE_OF_CONDUCT.md).
