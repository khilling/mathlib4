import Lake
open Lake DSL

package "diploma_lean_2" {
  moreLinkArgs := #[
    "-L./.lake/packages/LeanCopilot/.lake/build/lib",
    "-lctranslate2"
  ]
  srcDir := "./DiplomaLean2"  -- Your source files directory
}

lean_lib «DiplomaLean2» where
  -- add library configuration options here

--@[default_target]
--lean_exe "diploma_lean_2" where
  --root := `Main

require LeanCopilot from git "https://github.com/lean-dojo/LeanCopilot.git" @ "v1.6.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"
