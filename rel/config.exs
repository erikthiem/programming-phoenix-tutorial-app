use Mix.Releases.Config,
    # This sets the default release built by `mix release`
    default_release: :default,
    # This sets the default environment used by `mix release`
    default_environment: :dev

# For a full list of config options for both releases
# and environments, visit https://hexdocs.pm/distillery/configuration.html


# You may define one or more environments in this file,
# an environment's settings will override those of a release
# when building in that environment, this combination of release
# and environment configuration is called a profile

environment :dev do
  set dev_mode: true
  set include_erts: false
  set cookie: :"f!(D![J)in(U2P}7ZK?Uxz/iYASd3Di`ZPo0)4N<w@[P8OI/CH@/c<Ck/9x%boSm"
end

environment :prod do
  set include_erts: true
  set include_src: false
  set cookie: :"Dy|&q@XQ,$F.tUYh0f<(52RGZDRZl`/xU^|.HP*lV)q==^uS3Q8^1p<}`&6RbF[S"
end

# You may define one or more releases in this file.
# If you have not set a default release, or selected one
# when running `mix release`, the first release in the file
# will be used by default

release :rumbl do
  set version: current_version(:rumbl)
end

