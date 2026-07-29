import ComputationalAspectsDataAnalysisBigCanonicalLaneLean.FinalTheorem
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalAspectsDataAnalysisBigCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev BitString := List Bool
abbrev Language := Set BitString

structure DecisionProcedure where
  accepts : BitString -> Bool

structure WitnessRelation where
  accepts : BitString -> BitString -> Prop

structure PolynomialCertificateBound where
  degree : Nat

structure BigDataClassicalObject where
  language : Language
  witnessRelation : WitnessRelation
  bound : PolynomialCertificateBound

structure BigDataAdmittedObject where
  classicalObject : BigDataClassicalObject
  projectedLanguage : Language
  solver : DecisionProcedure

structure BigDataEndgameState where
  admittedObject : BigDataAdmittedObject

def Decides (M : DecisionProcedure) (L : Language) : Prop :=
  forall x : BitString, M.accepts x = true ↔ x ∈ L

end ComputationalAspectsDataAnalysisBigCanonicalLaneLean
end HautevilleHouse
