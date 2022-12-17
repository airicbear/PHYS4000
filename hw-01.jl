### A Pluto.jl notebook ###
# v0.19.12

using Markdown
using InteractiveUtils

# ╔═╡ 8afc8056-295c-11ed-3bd7-e32fb224d80c
begin
	using Unitful
	using UnitfulAstro
	using PhysicalConstants.CODATA2018: c_0, G
md"""
# Homework 1

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ September 12, 2022
"""
end

# ╔═╡ 0a5d7b1c-a81f-446f-90ca-367a374e1d5b
let
md"""
# Problem 1

What is an *analemma*, and what properties does an analemma encode?
"""
md"""
### Problem 1

An analemma visualizes the Sun's position of the sun relative to a stationary observer and same time of day throughout the year.
It produces a figure eight shape which indicates that the apparent solar day changes in length with respect to time of year.
"""
end

# ╔═╡ b4f4fc28-a2a6-4c72-aff7-dd3e8dc3400e
let
md"""
# Problem 2

What are the maximum angles for aberration of starlight and parallax (for the nearest star) from Jupiter's orbit?
How does "aberration versus parallax" compare from Jupiter's orbit relative to Earth's orbit (that is, from which planet would parallax be more obvious relative to aberration?)
"""
	md"""
### Problem 2

Let the orbital velocity of Jupiter at perihelion be ``v_♃ = 13.72 \text{ km s}^{-1}``, the orbital velocity of Earth at perihelion be ``v_⊕ = 30.29 \text{ km s}^{-1}``, the speed of light be ``c = 3.0 × 10^5 \text{ km s}^{-1}``, and the distance to Proxima Centauri (the nearest star) from the Sun be ``d = 270,000 \text{ AU} = 1.3 \text{ parsecs}``.
Using small angle approximation, the maximum angle for aberration of starlight from Jupiter's orbit is

$θ_\text{♃} ≈ \frac{v_♃}{c} ≈ \frac{13.72 \text{ km s}^{-1}}{3.0 × 10^5 \text{ km s}^{-1}} \left(\frac{180^∘}{π \text{ rad}}\right) \left(\frac{3600''}{1^∘}\right) ≈ 9.43''$

and the maximum angle for parallax from Jupiter's orbit is

$π''_♃ = \frac{1 \text{ AU}}{d} = \frac{1 \text{ AU}}{270,000 \text{ AU}} \left(\frac{180^∘}{π \text{ rad}}\right) \left(\frac{3600''}{1^∘}\right) ≈ 0.768''$

The same measurements for Earth are, respectively,

$θ_⊕ ≈ \frac{v_⊕}{c} ≈ \frac{30.29 \text{ km s}^{-1}}{3.0 × 10^5 \text{ km s}^{-1}} \left(\frac{180^∘}{π \text{ rad}}\right) \left(\frac{3600''}{1^∘}\right) ≈ 20.8''$

$π''_⊕ = \frac{1 \text{ AU}}{d} = \frac{1 \text{ AU}}{270,000 \text{ AU}} \left(\frac{180^∘}{π \text{ rad}}\right) \left(\frac{3600''}{1^∘}\right) ≈ 0.768''$

Comparing the ratio of parallax to aberration of starlight for Jupiter and Earth we get,

$\frac{π''_♃}{θ_♃} = \frac{0.768}{9.43} ≈ 0.081 > \frac{π''_⊕}{θ_⊕} = \frac{0.768}{20.8} ≈ 0.037$

which implies that parallax is more obvious on Jupiter relative to aberration than on Earth.
"""
end

# ╔═╡ 58c1c1fe-5c9e-4e60-9380-98b8ba42aa43
let
md"""
# Problem 3

Comet Hale-Bopp has an orbit about the Sun with eccentricity ``e = 0.9951`` and semimajor axis length ``a = 186.5 \text{ AU}``.
What is the sidereal orbital period of Comet Hale-Bopp?
What is Comet Hale-Bopp's distance from the Sun at perihelion?
What is its distance from the Sun at aphelion?
Comet Hale-Bopp passed through perihelion on 1997 April 1; did the previous perihelion passage of Comet Hale-Bopp occur before or after the birth of Aristotle?
"""
	md"""
### Problem 3

The sidereal orbital period of Comet Hale-Bopp is

$P = \sqrt{Ka^3} = \sqrt{(1 \text{ yr}^2\text{AU}^{-3})(186.5 \text{ AU})^3} ≈ 2547 \text{ yr}$

It's distance from the Sun at perihelion is

$q = a(1 - e) = (186.5 \text{ AU})(1 - 0.9951) ≈ 0.914 \text{ AU}$

It's distance from the Sun at aphelion is

$Q = a(1 + e) = (186.5 \text{ AU})(1 + 0.9951) ≈ 372 \text{ AU}$

Aristotle was born in 384 BC which is 2381 years since 1997.
Since Comet Hale-Bopp's orbital period is longer than the time since Aristotle's birth, the previous perihelion passage occured before the birth of Aristotle.
"""
end

# ╔═╡ c4b0218f-e383-4870-88e8-c811cf9410aa
let
md"""
# Problem 4

(a) Io is the innermost Galilean satellite of Jupiter.
The orbital period of Io is ``P = 1.769`` days; the semimajor axis of its orbit is ``a = 421,600 \text{ km}`` (slightly larger than the Moon's orbit about the Earth).
Given this information, find the mass of Jupiter.

(b) Phobos is the inner moon of Mars.
The orbital period of Phobos is ``P = 0.32`` days; the semimajor axis of its orbit is ``a = 9370 \text{ km}``.
Find the mass of Mars.
(Hint: you may assume the masses of Io and Phobos are negligible compared to those of their parent planets.)
"""
md"""
### Problem 4

a) Let the orbital period of Io be ``P = 1.769 \text{ days} = 1.528416 × 10^5 \text{ s}`` and the semimajor axis of its orbit be ``a = 421,600 \text{ km} = 4.216 × 10^8 \text{ m}``.
The mass of Jupiter (in terms of the mass of the Sun ``M_⊙ = 1.98 × 10^{30} \text{ kg}``) is then

$M = \frac{4π^2 a^3}{GP^2} = \frac{4π^2 (4.216 × 10^8 \text{ m})^3}{6.67 × 10^{-11} \text{ m}^3\text{s}^{-2}\text{kg}^{-1}(1.528146 × 10^5 \text{ s})^2} = 1.9 × 10^{27} \text{ kg} = 9.6 × 10^{-4} M_⊙$

b) Let the orbital period of Phobos be ``P = 0.32 \text{ days} = 2.7648 × 10^4 \text{ s}`` and the semimajor axis of its orbit be ``a = 9370 \text{ km} = 9.37 × 10^6 \text{ m}``.
The mass of Mars is then

$M = \frac{4π^2 a^3}{GP^2} = \frac{4π^2 (9.37 × 10^6 \text{ m})^3}{6.67 × 10^{-11} \text{ m}^3\text{s}^{-2}\text{kg}^{-1}(2.7648 × 10^4 \text{ s})^2} = 6.37 × 10^{23} \text{ kg} = 3.22 × 10^{-7} M_⊙$
"""
end

# ╔═╡ 4f8861cb-0500-4979-a330-a206d552725d
let
md"""
# Problem 5

How close to the Sun could the planet Jupiter come without suffering tidal disruption?
"""
md"""
### Problem 5

Let the density of the Sun be ``ρ_⊙ = 1.41 \text{ g/cm}^3``, the density of Jupiter be ``ρ_♃ = 1.33 \text{ g/cm}^3``, and the radius of the Sun be ``R_⊙ = 6.96 × 10^8 \text{ m}``.
The Roche limit for Jupiter (the closest distance Jupiter could come to the Sun without suffering tidal disruption) in this case is

$r_R = 2.44 \left(\frac{ρ_⊙}{ρ_♃}\right)^{1/3} R_⊙ = 2.44 \left(\frac{1.41 \text{ g/cm}^3}{1.33 \text{ g/cm}^3}\right)^{1/3} (6.96 × 10^8 \text{ m}) = 1.73 × 10^9 \text{ m} = 2.49R_⊙$
"""
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PhysicalConstants = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"
UnitfulAstro = "6112ee07-acf9-5e0f-b108-d242c714bf9f"

[compat]
PhysicalConstants = "~0.2.3"
Unitful = "~1.11.0"
UnitfulAstro = "~1.2.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "942c8ab1050621532b2871e04ad1dbd8d356f986"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.CommonSolve]]
git-tree-sha1 = "332a332c97c7071600984b3c31d9067e1a4e6e25"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.1"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "fb21ddd70a051d882a1686a5a550990bbe371a95"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.4.1"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "3d3e902b31198a27340d0bf00d6ac452866021cf"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.9"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.Measurements]]
deps = ["Calculus", "LinearAlgebra", "Printf", "RecipesBase", "Requires"]
git-tree-sha1 = "12950d646ce04fb2e89ba5bd890205882c3592d7"
uuid = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
version = "2.8.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.PhysicalConstants]]
deps = ["Measurements", "Roots", "Unitful"]
git-tree-sha1 = "cd4da9d1890bc2204b08fe95ebafa55e9366ae4e"
uuid = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
version = "0.2.3"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
git-tree-sha1 = "6bf3f380ff52ce0832ddd3a2a7b9538ed1bcca7d"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.2.1"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Roots]]
deps = ["CommonSolve", "Printf", "Setfield"]
git-tree-sha1 = "50f945fb7d7fdece03bbc76ff1ab96170f64a892"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "2.0.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "StaticArraysCore"]
git-tree-sha1 = "e2cc6d8c88613c05e1defb55170bf5ff211fbeac"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "1.1.1"

[[deps.StaticArraysCore]]
git-tree-sha1 = "ec2bd695e905a3c755b33026954b119ea17f2d22"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.3.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Unitful]]
deps = ["ConstructionBase", "Dates", "LinearAlgebra", "Random"]
git-tree-sha1 = "b649200e887a487468b71821e2644382699f1b0f"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.11.0"

[[deps.UnitfulAngles]]
deps = ["Dates", "Unitful"]
git-tree-sha1 = "d6cfdb6ddeb388af1aea38d2b9905fa014d92d98"
uuid = "6fb2a4bd-7999-5318-a3b2-8ad61056cd98"
version = "0.6.2"

[[deps.UnitfulAstro]]
deps = ["Unitful", "UnitfulAngles"]
git-tree-sha1 = "05adf5e3a3bd1038dd50ff6760cddd42380a7260"
uuid = "6112ee07-acf9-5e0f-b108-d242c714bf9f"
version = "1.2.0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"
"""

# ╔═╡ Cell order:
# ╟─8afc8056-295c-11ed-3bd7-e32fb224d80c
# ╟─0a5d7b1c-a81f-446f-90ca-367a374e1d5b
# ╟─b4f4fc28-a2a6-4c72-aff7-dd3e8dc3400e
# ╟─58c1c1fe-5c9e-4e60-9380-98b8ba42aa43
# ╟─c4b0218f-e383-4870-88e8-c811cf9410aa
# ╟─4f8861cb-0500-4979-a330-a206d552725d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
