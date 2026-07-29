import ComputationalAspectsDataAnalysisBigCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputationalAspectsDataAnalysisBigCanonicalLaneLean

def ConstrainedBigDataClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_big_data_endgame (A : AdmissibleClass) :
    ConstrainedBigDataClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalAspectsDataAnalysisBigCanonicalLaneLean
end HautevilleHouse
