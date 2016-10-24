## AdministrateFieldEnum
[![Gem](https://img.shields.io/gem/v/administrate-field-enum.svg)]()

A plugin to show enum attributes in [Administrate].

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'administrate-field-enum'
```

And then execute:
```
$ bundle install
```

## Usage

In your Dashboard `ATTRIBUTE_TYPES` use the field type `Field::Enum`. i.e.
```ruby
ATTRIBUTE_TYPES = {
  category: Field::Enum
}
```

By default all `Enum` options are false, you can set them to true like this:
```ruby
ATTRIBUTE_TYPES = {
  images_files: Field::Enum.with_options(direct: true, presigned: true, multiple: true)
}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DisruptiveAngels/administrate-field-enum.

## License

[MIT License](https://github.com/DisruptiveAngels/administrate-field-enum/blob/better_readme/LICENSE.md)

