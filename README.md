
# Participa Cloud Demo App

Free Open-Source participatory democracy, citizen participation and open government for cities and organizations

This is the open-source repository for Participa Cloud Demo, based on [Decidim](https://decidim.org).

## Starting the application

```bash
cp .env.example .env
touch .env.development
docker-compose up -d
```

## Stoping the application

```bash
docker-compose down
```

## Upgrading

Update your Gemfile, where 0.16.0 is the [last published version](https://github.com/decidim/decidim/releases).

```ruby
DECIDIM_VERSION = "0.16.0"

gem "decidim", DECIDIM_VERSION
gem "decidim-dev", DECIDIM_VERSION
```

Run these commands to upgrade and make sure you get all the latest migrations:

```bash
docker-compose run app bundle update decidim
docker-compose run app rails decidim:upgrade
docker-compose run app rails db:migrate
```

## Setting up the application

### Development

For quick-starting on development environment, we recommend on using the demo data (seeds). You can use them with:

```bash
docker-compose run app rails db:seed
```

### Production

For production environment, you will want to start on a new database.

You will need to do some steps before having the app working properly once you've deployed it:

1. Open a Rails console in the server: `bundle exec rails console`
2. Create a System Admin user:
```ruby
user = Decidim::System::Admin.new(email: <email>, password: <password>, password_confirmation: <password>)
user.save!
```
3. Visit `<your app url>/system` and login with your system admin credentials
4. Create a new organization. Check the locales you want to use for that organization, and select a default locale.
5. Set the correct default host for the organization, otherwise the app will not work properly. Note that you need to include any subdomain you might be using.
6. Fill the rest of the form and submit it.

You're good to go!

## Documentation

* [Functions and Features](https://docs.decidim.org/features/en/general-description/) - How Decidim works, a detailed feature description, and the roadmap for 2017/2018.
* [Decidim’s Social Contract](https://docs.decidim.org/social-contract/en/social-contract/) - Code for democratic guarantees and open collaboration
* [Developers manual](https://docs.decidim.org/develop/en/introduction/)
* [Checklist](https://docs.decidim.org/develop/en/checklist/)

## License

GNU AFFERO GENERAL PUBLIC LICENSE (Version 3).

