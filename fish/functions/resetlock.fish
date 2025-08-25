function resetlock
    git reset pnpm-lock.yaml
    git checkout -- pnpm-lock.yaml
    pnpm i
end