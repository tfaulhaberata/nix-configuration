{
  inputs,
  channels,
  ...
}: final: prev: {
  inherit (channels.unstable) terraform;
}
