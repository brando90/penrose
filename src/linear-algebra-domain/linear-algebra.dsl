----------------------------- Type Constructors --------------------------------

tconstructor Scalar : type
tconstructor VectorSpace : type
tconstructor Vector : type
tconstructor LinearMap : type

-------------------------------- Operators -------------------------------------

operator Neg (v : Vector) : Vector
operator Scale (c : Scalar, v : Vector) : Vector
operator AddV (v1 : Vector, v2 : Vector) : Vector
operator AddS(s1 : Scalar, s2 : Scalar) : Scalar
operator Norm (v1 : Vector) : Scalar
operator InnerProduct (v1 : Vector, v2 : Vector) : Scalar
operator Determinant (v1 : Vector, v2 : Vector) : Scalar
operator Apply (f : LinearMap, v : Vector) : Vector

-------------------------------- Predicates -------------------------------------

predicate In (v : Vector, V : VectorSpace) : Prop
predicate From (f : LinearMap, V : VectorSpace, W : VectorSpace) : Prop
predicate Not (p1 : Prop) : Prop




------------------------- Syntactic Sugar Definition ---------------------------

StmtNotation "det(v1, v2)" -> "Determinant(v1 , v2)"
StmtNotation "LinearMap f : U → V" -> "LinearMap f;From(f,U,V)"
StmtNotation "v1 + v2" -> "AddV(v1,v2)"
StmtNotation "-v1" -> "Neg(v1)"
StmtNotation "Vector a ∈ U" -> "Vector a;In(a,U)"
StmtNotation "|y1|" -> "Norm(y1)"
StmtNotation "<v1,v2>" -> "InnerProduct(v1 , v2)"
StmtNotation "s * v1" -> "Scale(s , v1)"
StmtNotation "Scalar c := " -> "Scalar c ;c := "
StmtNotation "f(v)" -> "apply(f,v)"

-- Examples for prelude, just for reproducing (Should be removed)
--value T : VectorSpace
-- value T1 : VectorSpace
