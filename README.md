# Height API Ruby Gem

_**Warning**: This is still a work in progress. Expect changes in the API_

This gem is a Ruby implementation for [Height.app](https://height.app/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'height-api'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install height-api

## Configuration

Set the environment variable `HEIGHT_API_KEY`

## Usage

Create an instance of the client

```ruby
height = Height.new
```

From the client you can list lists

```ruby
height.lists.list
```

The result will be of type `Height::ListResponse` which you can access like any
other enumerable. Each item will be of a `Height::Model` type and have its own
methods. For example, we can get all tasks in a list

```ruby
lists = height.lists.list
tasks = lists.first.task
```

You can also get a task if you know the index or id

```ruby
task = height.tasks.get(2)
```

And update it

```ruby
updated_task = task.update('status' => 'inProgress')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/mauromorales/height-api.

## License

The gem is available as open source under the terms of the [MIT
License](https://opensource.org/licenses/MIT).
