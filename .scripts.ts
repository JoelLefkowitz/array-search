import { concurrent } from "nps-utils";

export default {
  scripts: {
    lint: concurrent({
      spellcheck: "cspell . --dot --unique --no-progress --no-summary",
      secrets: "trufflehog3",
    }),
    format: concurrent({
      prettier: "prettier . --write",
      purty: "echo src test | xargs -n1 purty --write",
    }),
  },
};
