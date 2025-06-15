#view
set -g theme_display_date yes
set -g theme_date_format "+%F %H:%M"
set -g theme_display_git_default_branch yes

if status is-interactive
    # Commands to run in interactive sessions can go here
end

#path setting
fish_add_path $HOME/.pub-cache/bin
fish_add_path /usr/local/bin
fish_add_path /opt/homebrew/bin

# volta
set -gx VOLTA_HOME $HOME/.volta
fish_add_path $VOLTA_HOME/bin

#asdf
# source /usr/local/opt/asdf/libexec/asdf.fish

#peco setting
set fish_plugins theme peco

# python
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
status is-interactive; and pyenv init --path | source
pyenv init - | source

# for Anki addon DEV
if test -d anki-addon-env; source '/Users/captain-blue/Library/Application Support/Anki2/addons21/leech_hunter/anki-addon-env/bin/activate.fish'; end

# Google Cloud SDK
if test -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
    source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
end

# Google Vision API
set -Ux GOOGLE_VISION_API_KEY_PATH $HOME/.google/kindle-ocr-key.json

# The next line updates PATH for the Google Cloud SDK.
if test -f '/Users/captain-blue/Downloads/google-cloud-sdk/path.fish.inc';
    source '/Users/captain-blue/Downloads/google-cloud-sdk/path.fish.inc'
end

# alias
# 安全なキーバインド定義（他のプラグインと共存可能）
function fish_user_key_bindings
    # 他のバインドがある場合は呼び出す（例: fzf）
    if functions -q fzf_key_bindings
        fzf_key_bindings
    end

    # Ctrl+w に peco_select_history をバインド
    bind \cw peco_select_history
end

# git worktree
function gwa
    if test (count $argv) -lt 1
        echo "⚠️ Usage: gwa <work_tree> [<branch>]"
        return 1
    end

    set branch $argv[1]
    set checkout_target (test (count $argv) -ge 2; and echo $argv[2]; or echo $branch)

    set repo_name (basename (pwd))
    set worktree_path ../$repo_name-$branch

    echo "📁 added: $worktree_path → $checkout_target"
    git worktree add $worktree_path $checkout_target
end

alias gwr='git worktree remove .'
