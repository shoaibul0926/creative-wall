# Our Creative Wall

One wall, a slot for each of us. You build your own animation in **your** slot — both at the
same time — and it all shows up on one link.

**The live wall:** https://shoaibul0926.github.io/creative-wall/
*(give it a minute to switch on the first time)*

## Your slot

| You | Your folder — only touch this one |
|-----|-----------------------------------|
| Shoaibul | `pieces/shoaibul/art.html` |
| Sahil | `pieces/sahil/art.html` |

### The one rule
**Only touch your own folder.** That is what keeps us from bumping into each other.

## First time here?
Get the project onto your computer, then open it in Claude Code:
```
git clone https://github.com/shoaibul0926/creative-wall.git
cd creative-wall
```

## Do it in 3 steps

**1. Describe** — in Claude Code, tell it what you want in your slot:
> "In pieces/sahil/art.html, make colorful fireworks that explode on a dark sky."

Save, refresh the file in your browser, and keep tweaking until you love it.

**2. Share** — send it to the wall:
```
git pull
git add .
git commit -m "my slot: fireworks"
git push
```

**3. Look** — open the live wall link at the top. Refresh after either of us pushes to see the
newest art.

*(If `git push` says "rejected", just run `git pull` then `git push` again — that's normal.)*
