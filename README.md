# Alberto Castaño's Homebrew tap

This tap contains [chop](https://github.com/alberto-castano/chop).

Chop is a terminal app for cleaning linked Git worktrees.

## Install

```sh
brew install alberto-castano/tap/chop
```

## Upgrade

```sh
brew update
brew upgrade chop
```

Read the [Chop guide](https://github.com/alberto-castano/chop/blob/main/docs/guide.md) before removing worktrees with local changes.

## Automated updates

Chop's release workflow dispatches **Update Chop** after publishing a stable GitHub release.
The tap verifies the source checksum and Homebrew installation before committing the formula update.
The workflow needs permission to push to `main`.

To retry an update, run **Actions → Update Chop** on `main`.
Enter the published version without `v` and a unique request identifier.
Existing versions can be retried; older versions cannot replace newer formula versions.

See the [release setup guide](https://github.com/alberto-castano/chop/blob/main/docs/releasing.md) for token configuration.
