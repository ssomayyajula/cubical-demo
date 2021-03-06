module CTT.Data.Nat where

open import PathPrelude
open import FromStdLib

caseNat : ∀{l} → {A : Set l} → (a0 aS : A) → ℕ → A
caseNat a0 aS zero = a0
caseNat a0 aS (suc n) = aS

znots : (n : ℕ) → (zero ≡ suc n) → ⊥
znots n eq = subst {P = caseNat ℕ ⊥} eq zero
