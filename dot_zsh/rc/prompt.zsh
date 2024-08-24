# git prompt info stole from ohmyzsh and modified

# We wrap in a local function instead of exporting the variable directly in
# order to avoid interfering with manually-run git commands by the user.
function __git_prompt_git() {
  GIT_OPTIONAL_LOCKS=0 command git "$@"
}

function git_prompt_info() {
# If we are on a folder not tracked by git, get out.
  if ! __git_prompt_git rev-parse --git-dir &> /dev/null; then
    return 0
  fi

  # Get either:
  # - the current branch name
  # - the tag name if we are on a tag
  # - the short SHA of the current commit
  local ref
  ref=$(__git_prompt_git symbolic-ref --short HEAD 2> /dev/null) \
  || ref=$(__git_prompt_git describe --tags --exact-match HEAD 2> /dev/null) \
  || ref=$(__git_prompt_git rev-parse --short HEAD 2> /dev/null) \
  || return 0

  # Use global GIT_SHOW_UPSTREAM=1 for including upstream remote info
  local upstream
  if (( ${+GIT_SHOW_UPSTREAM} )); then
    upstream=$(__git_prompt_git rev-parse --abbrev-ref --symbolic-full-name "@{upstream}" 2>/dev/null) \
    && upstream=" -> ${upstream}"
  fi

  echo "%{$fg_bold[blue]%}(%{$fg[red]%}${ref:gs/%/%%}${upstream:gs/%/%%}$(parse_git_dirty)%{$reset_color%}"
}

# Checks if working tree is dirty
function parse_git_dirty() {
  local STATUS
  local -a FLAGS
  FLAGS=('--porcelain')
  if [[ "${DISABLE_UNTRACKED_FILES_DIRTY:-}" == "true" ]]; then
    FLAGS+='--untracked-files=no'
  fi
  case "${GIT_STATUS_IGNORE_SUBMODULES:-}" in
    git)
      # let git decide (this respects per-repo config in .gitmodules)
      ;;
    *)
      # if unset: ignore dirty submodules
      # other values are passed to --ignore-submodules
      FLAGS+="--ignore-submodules=${GIT_STATUS_IGNORE_SUBMODULES:-dirty}"
      ;;
  esac
  STATUS=$(__git_prompt_git status ${FLAGS} 2> /dev/null | tail -n 1)
  if [[ -n $STATUS ]]; then
    echo "%{$fg[yellow]%} *%{$fg[blue]%})"
  else
    echo "%{$fg[blue]%})"
  fi
}

# color prompt
setopt prompt_subst
PROMPT='[%{$fg_bold[green]%}%n@%m %{$fg[cyan]%}%~%{$reset_color%}] $(git_prompt_info)%# '
