import Lake
open Lake DSL

package "lean-euler" where
  -- add package configuration options here

lean_lib «LeanEuler» where
  -- add library configuration options here

@[default_target]
lean_exe "lean-euler" where
  root := `Main
