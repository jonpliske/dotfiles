EMOJIS=(🥯  🦆 🦉 🥓 🦄 🦀 🖕 🍣 🍤 🍥 🍡 🥃 🥞 🤯 🤪 🤬 🤮 🤫 🤭 🧐 🐕 🦖 👾 🐉 🐓 🐋 🐌 🐢)

_random_emoji() {
  SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
  echo $SELECTED_EMOJI;
}

alias emj=_random_emoji
