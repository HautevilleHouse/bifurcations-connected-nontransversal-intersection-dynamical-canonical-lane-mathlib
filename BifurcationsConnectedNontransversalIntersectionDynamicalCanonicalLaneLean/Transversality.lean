import BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean.DynamicalSystem

namespace HautevilleHouse
namespace BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean

structure TransversalityCondition (X : BifurcationSpace) (M N : Set X.carrier) where
  intersectionNonempty : (M ∩ N).Nonempty
  intersectionDimension : Nat
  codimensionCondition : Prop

structure NontransversalIntersection (X : BifurcationSpace) (M N : Set X.carrier) where
  intersectionNonempty : (M ∩ N).Nonempty
  transversalityFailure : ¬ TransversalityCondition M N
  bifurcationConsequence : Prop

structure NontransversalIntersectionAnalysis (X : BifurcationSpace) (M N : Set X.carrier) where
  intersection : NontransversalIntersection X M N
  stabilityAnalysis : Prop

end BifurcationsConnectedNontransversalIntersectionDynamicalCanonicalLaneLean
end HautevilleHouse