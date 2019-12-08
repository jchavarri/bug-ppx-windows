module HeroQuery =
  [%graphql {|
{
  hero @bsRecord {
    name
    height
    mass
  }
}
|}]
