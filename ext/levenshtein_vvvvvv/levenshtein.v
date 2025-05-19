module levenshtein

@[inline]
fn min(a int, b int, c int) int {
    return if a < b {
        if a < c { a } else { c }
    } else {
        if b < c { b } else { c }
    }
}

pub fn distance(s1 string, s2 string) int {
    r1 := s1.runes()
    r2 := s2.runes()

    // Allocate two working buffers: one for the previously calculated
    // distances, and one for the calculation currently in progress.
    mut v0 := []int{len: r2.len + 1}
    mut v1 := []int{len: r2.len + 1}

    // The buffers will swap roles after every iteration of the outer loop.
    // mut distances := &v0
    //mut workspace := &v1
    mut toggle := true

    // The initial value of the "previous" row is the distance of each prefix of
    // s2 from the empty string. This ends up just being the length of each
    // prefix.
    for j in 0 .. r2.len + 1 {
        v0[j] = j
    }

    for i, c1 in r1 {
        distances := if toggle { &v0 } else { &v1 }
        workspace := if toggle { &v1 } else { &v0 }

        toggle = !toggle
        (*workspace)[0] = i + 1

        for j, c2 in r2 {
            deletion_cost := (*distances)[j + 1] + 1
            insertion_cost := (*workspace)[j] + 1
            substitution_cost :=
                (*distances)[j] +
                (if c1 == c2 { 0 } else { 1 })

            (*workspace)[j + 1] = min(
                deletion_cost,
                insertion_cost,
                substitution_cost
            )
        }
    }

    final := if toggle { &v0 } else { &v1 }

    return (*final).last()
}
