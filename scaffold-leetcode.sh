#!/usr/bin/env bash
set -e

# List of problems to scaffold
declare -A problems=(
  [two-sum]="Easy · Arrays · HashMap"
  [add-two-numbers]="Medium · LinkedList · Math"
  [longest-substring-without-repeating-characters]="Medium · Strings · Sliding Window"
  [median-of-two-sorted-arrays]="Hard · Arrays · Binary Search"
  [reverse-linked-list]="Easy · LinkedList"
)

# Create folders and files
for slug in "${!problems[@]}"; do
  mkdir -p "$slug"
  cat > "$slug/Problem.md" <<EOF
# ${slug//-/ }
**Tags:** ${problems[$slug]}

**Problem:**  
*(Paste the problem statement from LeetCode here.)*
EOF

  className=$(echo "$slug" | sed -r 's/(^|[-])([a-z])/\U\2/g')
  cat > "$slug/Solution.java" <<EOF
package leetcode.${slug};

public class Solution {
    public int /* or appropriate return type */ solve(/* parameters */) {
        // TODO: implement ${slug//-/ }
        return 0;
    }
}
EOF

  cat > "$slug/Complexities.md" <<EOF
# Complexity Analysis for ${slug//-/ }

- **Time Complexity:** O(n) / …
- **Space Complexity:** O(1) / …
EOF
done

# Update top-level README
cat > README.md <<EOF
# LeetCode Java Solutions

This repo contains my Java solutions to common LeetCode problems.

## How to run

1. Navigate to a problem folder, e.g. \`cd two-sum\`.
2. Compile:  
   \`\`\`bash
   javac -d out Solution.java
   \`\`\`
3. Run (example):  
   \`\`\`bash
   java -cp out leetcode.two_sum.Solution
   \`\`\`

## Problems included

- two-sum (Easy)
- add-two-numbers (Medium)
- longest-substring-without-repeating-characters (Medium)
- median-of-two-sorted-arrays (Hard)
- reverse-linked-list (Easy)

EOF

echo "✅ Scaffolding complete! Check each problem folder and fill in the details."
#!/usr/bin/env bash
set -e

# List of problems to scaffold
declare -A problems=(
  [two-sum]="Easy · Arrays · HashMap"
  [add-two-numbers]="Medium · LinkedList · Math"
  [longest-substring-without-repeating-characters]="Medium · Strings · Sliding Window"
  [median-of-two-sorted-arrays]="Hard · Arrays · Binary Search"
  [reverse-linked-list]="Easy · LinkedList"
)

# Create folders and files
for slug in "${!problems[@]}"; do
  mkdir -p "$slug"
  cat > "$slug/Problem.md" <<EOF
# ${slug//-/ }
**Tags:** ${problems[$slug]}

**Problem:**  
*(Paste the problem statement from LeetCode here.)*
EOF

  className=$(echo "$slug" | sed -r 's/(^|[-])([a-z])/\U\2/g')
  cat > "$slug/Solution.java" <<EOF
package leetcode.${slug};

public class Solution {
    public int /* or appropriate return type */ solve(/* parameters */) {
        // TODO: implement ${slug//-/ }
        return 0;
    }
}
EOF

  cat > "$slug/Complexities.md" <<EOF
# Complexity Analysis for ${slug//-/ }

- **Time Complexity:** O(n) / …
- **Space Complexity:** O(1) / …
EOF
done

# Update top-level README
cat > README.md <<EOF
# LeetCode Java Solutions

This repo contains my Java solutions to common LeetCode problems.

## How to run

1. Navigate to a problem folder, e.g. \`cd two-sum\`.
2. Compile:  
   \`\`\`bash
   javac -d out Solution.java
   \`\`\`
3. Run (example):  
   \`\`\`bash
   java -cp out leetcode.two_sum.Solution
   \`\`\`

## Problems included

- two-sum (Easy)
- add-two-numbers (Medium)
- longest-substring-without-repeating-characters (Medium)
- median-of-two-sorted-arrays (Hard)
- reverse-linked-list (Easy)

EOF

echo "✅ Scaffolding complete! Check each problem folder and fill in the details."

