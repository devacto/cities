#!/usr/bin/env python

from collections import deque


def solution(T):
    result = [0 for k in range(len(T)-1)]
    levels = [0 for k in T]
    capital = 0
    graph = [[] for k in T]
    for i in range(len(T)):
        if i == T[i]:
            capital = T[i]
            continue
        if T[i] not in graph[i]:
            graph[i].append(T[i])
        if i not in graph[T[i]]:
            graph[T[i]].append(i)
    visited = [0 for k in T]
    q = deque([])
    q.append(capital)
    visited[capital] = 1
    levels[capital] = 0
    while (len(q) > 0):
        s = q.popleft()
        v = graph[s]
        p = levels[s]
        for i in v:
            n = p + 1
            if visited[i] == 0:
                q.append(i)
                visited[i] = 1
                levels[i] = n
    for i in levels:
        if i > 0:
            result[i-1] = result[i-1] + 1
    return result


def main():
    print(solution([9, 1, 4, 9, 0, 4, 8, 9, 0, 1]))


if __name__ == '__main__':
    main()
