### A Pluto.jl notebook ###
# v0.19.12

using Markdown
using InteractiveUtils

# ╔═╡ fb581d9a-770d-11ed-0c54-8ffde461f1b3
begin
	using Unitful
	using UnitfulAstro
	using PhysicalConstants.CODATA2018: G, c_0, m_e
md"""
# Astrophysics Final Exam

Eric Nguyen Dec 9, 2022
"""
end

# ╔═╡ 58362dcb-394f-4353-9861-1dcc266c2a55
let
md"""
# Problem 1

Let's estimate the lifetime of each successive stage of fusion in a ``10 M_⊙`` star.

Use the following assumptions: the luminosity is constant at all times (not bad, actually), that only one fusion process is occurring at any time (not great), and that 20% of the star's mass completely fuses before the next element begins to fuse (pretty bad).
Also assume that these are the only fusion processes that occur:

| Stage | Reaction |   |
|-------|----------|---|
| I | ``4\;{}^1\text{H} → {}^4\text{He}`` | (CNO cycle) |
| II | ``3\;{}^4\text{He} → {}^{12}\text{C}`` | (triple-alpha) |
| III | ``{}^{12}\text{C} + {}^4\text{He} → {}^{16}\text{O}`` | (Carbon-burning) |
| IV | ``2\;{}^{16}\text{O} → {}^{28}\text{Si} + {}^4\text{He}`` | (Oxygen-burning) |
| V | ``{}^{28}\text{Si} + 7 \;{}^{4}\text{He} → {}^{56}\text{Ni}`` | (Silicon-burning) |

From these assumptions, determine the time that each fusion step takes (In years, days, or seconds, as appropriate).

(You are welcome to calculate or reference the energy generated by each reaction as you see fit. Citations or justifications are a must)

[30 pts total: 2 pts for each reaction Q; 2 pts for each stage lifetime; 10 pts for correct process]
"""
let
let
	M = 10u"Msun"
	m_1H = 1.00782503223u"u"
	m_4He = 4.00260325413u"u"
	m_12C = 12.0000000u"u"
	m_16O = 15.99491461957u"u"
	m_28Si = 27.97692653465u"u"
	m_56Ni = 55.942128580u"u"
	QI = (4m_1H - m_4He) * c_0^2 |> u"MeV"
	QII = (3m_4He - m_12C) * c_0^2 |> u"MeV"
	QIII = (m_12C + m_4He - m_16O) * c_0^2 |> u"MeV"
	QIV = (2m_16O - m_28Si - m_4He) * c_0^2 |> u"MeV"
	QV = (m_28Si + 7m_4He - m_56Ni) * c_0^2 |> u"MeV"
	# [:I => QI, :II => QII, :III => QIII, :IV => QIV, :V => QV]
	L = 1.02*(M/1u"Msun")^(3.92) * 1u"Lsun"
	NH = (M |> u"u") / m_1H
	EfusI = (NH/4) * QI |> u"J"
	tfusI = EfusI / L |> u"Myr"
	NHe = (0.8M |> u"u") / m_4He
	EfusII = (NHe/3) * QII |> u"J"
	tfusII = EfusII / L |> u"Myr"
	NC = (0.6M |> u"u") / m_12C
	EfusIII = (NC/1) * QIII |> u"J"
	tfusIII = EfusIII / L |> u"Myr"
	NO = (0.4M |> u"u") / m_16O
	EfusIV = (NO/2) * QIV |> u"J"
	tfusIV = EfusIV / L |> u"Myr"
	NSi = (0.2M |> u"u") / m_28Si
	EfusV = (NSi/1) * QV |> u"J"
	tfusV = EfusV / L |> u"Myr"
end
md"""
### Problem 1

For ``10 M_⊙`` star, we assume that the luminosity is constant at all times, that only one fusion process is occurring at any time, and that 20% of the star's mass completely fuses before the next element begins to fuse.
We also assume that these are the only fusion processes that occur:

| Stage | Reaction |   |
|:-------|:----------|:---|
| I | ``4\;{}^1\text{H} → {}^4\text{He}`` | (CNO cycle) |
| II | ``3\;{}^4\text{He} → {}^{12}\text{C}`` | (triple-alpha) |
| III | ``{}^{12}\text{C} + {}^4\text{He} → {}^{16}\text{O}`` | (Carbon-burning) |
| IV | ``2\;{}^{16}\text{O} → {}^{28}\text{Si} + {}^4\text{He}`` | (Oxygen-burning) |
| V | ``{}^{28}\text{Si} + 7 \;{}^{4}\text{He} → {}^{56}\text{Ni}`` | (Silicon-burning) |

First we calculate the ``Q`` values for each stage:

$\begin{align*}
Q_{\text{I}} &= [4m({}^1\text{H}) - m({}^4\text{He})] c^2 = 26.7 \text{ MeV} \\
Q_{\text{II}} &= [3m({}^4\text{He}) - m({}^{12}\text{C})] c^2 = 7.27 \text{ MeV} \\
Q_{\text{III}} &= [m({}^{12}\text{C}) + m({}^4\text{He}) - m({}^{16}\text{O})] c^2 = 7.16 \text{ MeV} \\
Q_{\text{IV}} &= [2m({}^{16}\text{O}) - m({}^{28}\text{Si}) - m({}^4\text{He})] c^2 = 9.59 \text{ MeV} \\
Q_{\text{V}} &= [m({}^{28}\text{Si}) + 7m({}^4\text{He}) - m({}^{56}\text{Ni})] c^2 = 49.4 \text{ MeV}
\end{align*}$

(to obtain the nuclear masses, I referenced [https://wwwndc.jaea.go.jp/NuC/index.html](https://wwwndc.jaea.go.jp/NuC/index.html)).
Each stage has a lifetime ``t_\text{fus}`` according to the relation

$t_\text{fus} = \frac{E_\text{fus}}{L}$

where ``E_{\text{fus}}`` is the amount of energy released by the stage and ``L`` is the luminosity of the star.
The luminosity of the star can be found using the mass--luminosity relation for a star with ``M > 0.7M_⊙``:

$L/L_⊙ = 1.02(M/M_⊙)^{3.92} \implies L = 8484 L_⊙$

For each stage, we find ``E_{\text{fus}}`` depending on the atom that is being fused and how many atoms are being fused and then use the result to find the lifetime ``t_{\text{fus}}``:

$\begin{align*}
N_{\text{H}} = \frac{M}{m({}^1\text{H})} \implies E_{\text{fus,I}} = \frac{N_\text{H}}{4} Q_{\text{I}} = 1.27 \times 10^{46} \text{ J} \implies t_{\text{fus,I}} &= 124 \text{ Myr} \\
N_{\text{He}} = \frac{M}{m({}^4\text{He})} \implies E_{\text{fus,II}} = \frac{N_\text{He}}{3} Q_{\text{II}} = 1.16 \times 10^{45} \text{ J} \implies t_{\text{fus,II}} &= 11.3 \text{ Myr} \\
N_{\text{C}} = \frac{M}{m({}^{12}\text{C})} \implies E_{\text{fus,III}} = \frac{N_{\text{C}}}{1} Q_{\text{III}} = 1.15 \times 10^{45} \text{ J} \implies t_{\text{fus,III}} &= 11.2 \text{ Myr} \\
N_{\text{O}} = \frac{M}{m({}^{16}\text{O})} \implies E_{\text{fus,IV}} = \frac{N_{\text{O}}}{2} Q_{\text{IV}} = 5.75 \times 10^{44} \text{ J} \implies t_{\text{fus,IV}} &= 5.61 \text{ Myr} \\
N_{\text{Si}} = \frac{M}{m({}^{28}\text{Si})} \implies E_{\text{fus,V}} = \frac{N_{\text{Si}}}{1} Q_{\text{V}} = 3.39 \times 10^{45} \text{ J} \implies t_{\text{fus,V}} &= 33.0 \text{ Myr}
\end{align*}$
"""
	
md"""
### Problem 1

For ``10 M_⊙`` star, we assume that the luminosity is constant at all times, that only one fusion process is occurring at any time, and that 20% of the star's mass completely fuses before the next element begins to fuse.
We also assume that these are the only fusion processes that occur:

| Stage | Reaction |   |
|:-------|:----------|:---|
| I | ``4\;{}^1\text{H} → {}^4\text{He}`` | (CNO cycle) |
| II | ``3\;{}^4\text{He} → {}^{12}\text{C}`` | (triple-alpha) |
| III | ``{}^{12}\text{C} + {}^4\text{He} → {}^{16}\text{O}`` | (Carbon-burning) |
| IV | ``2\;{}^{16}\text{O} → {}^{28}\text{Si} + {}^4\text{He}`` | (Oxygen-burning) |
| V | ``{}^{28}\text{Si} + 7 \;{}^{4}\text{He} → {}^{56}\text{Ni}`` | (Silicon-burning) |

First we calculate the ``Q`` values for each stage:

$\begin{align*}
Q_{\text{I}} &= [4m({}^1\text{H}) - m({}^4\text{He})] c^2 = 26.7 \text{ MeV} \\
Q_{\text{II}} &= [3m({}^4\text{He}) - m({}^{12}\text{C})] c^2 = 7.27 \text{ MeV} \\
Q_{\text{III}} &= [m({}^{12}\text{C}) + m({}^4\text{He}) - m({}^{16}\text{O})] c^2 = 7.16 \text{ MeV} \\
Q_{\text{IV}} &= [2m({}^{16}\text{O}) - m({}^{28}\text{Si}) - m({}^4\text{He})] c^2 = 9.59 \text{ MeV} \\
Q_{\text{V}} &= [m({}^{28}\text{Si}) + 7m({}^4\text{He}) - m({}^{56}\text{Ni})] c^2 = 49.4 \text{ MeV}
\end{align*}$

(to obtain the nuclear masses, I referenced [https://wwwndc.jaea.go.jp/NuC/index.html](https://wwwndc.jaea.go.jp/NuC/index.html)).
"""
end
end

# ╔═╡ e843d72b-a07f-4c51-a364-0b8a4e71e8ca
md"""
Each stage has a lifetime ``t_\text{fus}`` according to the relation

$t_\text{fus} = \frac{E_\text{fus}}{L}$

where ``E_{\text{fus}}`` is the amount of energy released by the stage and ``L`` is the luminosity of the star.
The luminosity of the star can be found using the mass--luminosity relation for a star with ``M > 0.7M_⊙``:

$L/L_⊙ = 1.02(M/M_⊙)^{3.92} \implies L = 8484 L_⊙$

For each stage, we find ``E_{\text{fus}}`` depending on the atom that is being fused and how many atoms are being fused (with a 20% reduction in mass for each successive stage) and then use the result to find the lifetime ``t_{\text{fus}}``:

$\begin{align*}
N_{\text{H}} = \frac{M}{m({}^1\text{H})} \implies E_{\text{fus,I}} = \frac{N_\text{H}}{4} Q_{\text{I}} = 1.27 \times 10^{46} \text{ J} \implies t_{\text{fus,I}} &= 124 \text{ Myr} \\
N_{\text{He}} = \frac{0.8M}{m({}^4\text{He})} \implies E_{\text{fus,II}} = \frac{N_\text{He}}{3} Q_{\text{II}} = 9.30 \times 10^{44} \text{ J} \implies t_{\text{fus,II}} &= 9.07 \text{ Myr} \\
N_{\text{C}} = \frac{0.6M}{m({}^{12}\text{C})} \implies E_{\text{fus,III}} = \frac{N_{\text{C}}}{1} Q_{\text{III}} = 6.87 \times 10^{44} \text{ J} \implies t_{\text{fus,III}} &= 6.70 \text{ Myr} \\
N_{\text{O}} = \frac{0.4M}{m({}^{16}\text{O})} \implies E_{\text{fus,IV}} = \frac{N_{\text{O}}}{2} Q_{\text{IV}} = 2.30 \times 10^{44} \text{ J} \implies t_{\text{fus,IV}} &= 2.25 \text{ Myr} \\
N_{\text{Si}} = \frac{0.2M}{m({}^{28}\text{Si})} \implies E_{\text{fus,V}} = \frac{N_{\text{Si}}}{1} Q_{\text{V}} = 6.77 \times 10^{44} \text{ J} \implies t_{\text{fus,V}} &= 6.61 \text{ Myr}
\end{align*}$
"""

# ╔═╡ ac613f56-29ce-41a8-8338-6740a13e2da6
let
md"""
# Problem 2

The red supergiant star Betelgeuse has an equatorial radius of around ``887 R_⊙``, as estimated mass of ``18 M_⊙``, and a measured rotational period of 36 years.
Assume it has a uniform density, is a sphere, and rotates as a rigid body.

(a) [10 pts] Calculate the average density of Betelgeuse.

(b) [10 pts] Calculate the angular momentum of the innermost ``2 M_⊙`` of material.

(c) [10 pts] Assume that this innermost ``2 M_⊙`` of material becomes a neutron star after Betelgeuse's eventual supernova, and that this material does not gain or lose angular momentum during the explosion.
What will be the rotational period of the resulting neutron star (as possible pulsar)?
(You may treat the neutron star as a uniform sphere of constant density).
How does this compare to measured pulsar rotation rates?
"""
let
let
	R = 887u"Rsun"
	M = 18u"Msun"
	ω = 36u"yr^-1"
	ρ = 3*M / (4π*R^3) |> u"kg*m^-3"
	Rns = 11u"km" * (2u"Msun" / 1.4u"Msun")^(-1/3)
	L = (2/5) * 2u"Msun" * Rns^2 * ω |>u"kg*m^2*s^-1"
	# L = (2/5) * M * R^2 * ω |>u"kg*m^2*s^-1"
	Pns = (2π * Rns) / (0.1c_0) |> u"s"
end
md"""
### Problem 2

**(a).** Assuming it has a uniform density and is spherical, the red supergiant star Betelgeuse ``(R = 887 R_⊙, M = 18M_⊙, ω = 36 \text{ years})`` has an average density of

$⟨ρ⟩ = \frac{3M}{4πR^3} = 3.64 \times 10^{-5} \text{ kg m}^{-3}$

**(b).** The innermost ``2M_⊙`` material has a radius of

$R_{\text{ns}} ≈ 11 \text{ km} \left(\frac{2M_⊙}{1.4M_⊙}\right)^{-1/3} = 9.8 \text{ km}$

The angular momentum of the innermost ``2M_⊙`` material is then

$L ≈ \frac{2}{5} (2M_⊙) {R_{\text{ns}}}^2 ω = 1.7 \times 10^{32} \text{ kg m}^2 \text{ s}^{-1}$

**(c).**
Assuming that this innermost ``2M_⊙`` material becomes a neutron star after Betelgeuse's eventual supernova, and that angular momentum is conserved, the neutron star's rotational period is

$P_{\text{ns}} ∼ \frac{2πR_{\text{ns}}}{0.1c} ∼ 2 \times 10^{-3} \text{ s} = 2 \text{ ms}$

Measured pulsar rotation rates can be as short as ``P_\text{pulsar} = 10^{-3} \text{ s} = 1 \text{ ms}`` which is faster than the predicted rotational period of the neutron star of Betelgeuse.
"""
end
end

# ╔═╡ 5e963993-bcb3-42ac-a9b4-6dffe63b3787
let
md"""
# Problem 3

[10 pts] The Milky Way Galaxy's central black hole (Sgr A*) has a measured mass of ``4 \times 10^6 M_⊙``.
Calculate its Schwarzschild radius, and compare this radius with distances in our Solar system.
"""
let
let
	M = 4e6u"Msun"
	r = 3u"km" * (M / 1u"Msun")
	r |> u"AU"
end
md"""
### Problem 3

The Milky Way's central black hole Sgr A* ``(M = 4 \times 10^6 M_⊙)`` has a Schwarzschild radius of about

$r_{\text{Sch}} = \frac{2GM}{c^2} = 3 \text{ km} \left(\frac{M}{M_⊙}\right) = 1.2 \times 10^7 \text{ km} = 0.080 \text{ AU}$

Given that Sgr A*'s Schwarzschild radius is much less than ``1 \text{ AU}`` (the distance between the Earth and the Sun), the radius is relatively tiny compared to the distances in our solar system.
"""
end
end

# ╔═╡ fc4ae1d4-b811-4e13-8e89-329532a4b923
let
md"""
# Problem 4 (Quick Cosmology)

(a) [10 pts] What would be the shape of the universe (open, closed, or flat), if the cosmological constant was zero?
Justify your answer, but an explicit mathematical argument is not necessary.

(b) [10 pts] What will be the scale factor of the universe when the effective temperature of the cosmic microwave background (CMB) is 1.0 K?

(c) [10 pts] What was the effective temperature of the CMB when the scale factor was ``a(t) = 0.003``?
"""
let
let
	a = 0.003
	T = rationalize(1 / a)
end
md"""
### Problem 4

**(a)** If the cosmological constant was zero, the shape of the universe would be open since the criterion for flatness is ``\Omega_m + \Omega_\Lambda = 1`` and the universe's mass density is currently measured as ``\Omega_m = 0.3``.
Thus, with a cosmological constant of ``\Omega_\Lambda = 0``, then we would have ``\Omega_m + \Omega_\Lambda = 0.3 < 1``, implying a negatively curved universe (i.e., an open universe).

**(b)** If the effective temperature of the cosmic microwave background is ``T = 1.0 \text{ K}`` then using the relation

$\frac{d}{dt} (\ln{T}) = -\frac{d}{dt} (\ln{a})$

and solving for ``a`` we find that the scale factor of the universe is ``a(t) = 1``.

**(c)** The effective temperature of the cosmic microwave background given ``a(t) = 0.003`` is given by solving the relation for ``T``:

$\ln{T} = -\ln{a} \implies T = e^{-\ln{a}} = \frac{1}{a} = \frac{1000}{3} \text{ K} = 333 \text{ K}$
"""
end
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PhysicalConstants = "5ad8b20f-a522-5ce9-bfc9-ddf1d5bda6ab"
Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"
UnitfulAstro = "6112ee07-acf9-5e0f-b108-d242c714bf9f"

[compat]
PhysicalConstants = "~0.2.3"
Unitful = "~1.12.2"
UnitfulAstro = "~1.2.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "0eae2f3747ce4d605875c94e1342cfd363f44954"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "e7ff6cadf743c098e08fca25c91103ee4303c9bb"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.15.6"

[[deps.CommonSolve]]
git-tree-sha1 = "9441451ee712d1aec22edad62db1a9af3dc8d852"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.3"

[[deps.Compat]]
deps = ["Dates", "LinearAlgebra", "UUIDs"]
git-tree-sha1 = "00a2cccc7f098ff3b66806862d275ca3db9e6e5a"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.5.0"

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
git-tree-sha1 = "42324d08725e200c23d4dfb549e0d5d89dede2d2"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.10"

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
deps = ["SnoopPrecompile"]
git-tree-sha1 = "18c35ed630d7229c5584b945641a73ca83fb5213"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.2"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Roots]]
deps = ["ChainRulesCore", "CommonSolve", "Printf", "Setfield"]
git-tree-sha1 = "a3db467ce768343235032a1ca0830fc64158dadf"
uuid = "f2b01f46-fcfa-551c-844a-d8ac1e96c665"
version = "2.0.8"

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

[[deps.SnoopPrecompile]]
git-tree-sha1 = "f604441450a3c0569830946e5b33b78c928e1a85"
uuid = "66db9d55-30c0-4569-8b51-7e840670fc0c"
version = "1.0.1"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.StaticArraysCore]]
git-tree-sha1 = "6b7ba252635a5eff6a0b0664a41ee140a1c9e72a"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.4.0"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Unitful]]
deps = ["ConstructionBase", "Dates", "LinearAlgebra", "Random"]
git-tree-sha1 = "d670a70dd3cdbe1c1186f2f17c9a68a7ec24838c"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.12.2"

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
# ╟─fb581d9a-770d-11ed-0c54-8ffde461f1b3
# ╟─58362dcb-394f-4353-9861-1dcc266c2a55
# ╟─e843d72b-a07f-4c51-a364-0b8a4e71e8ca
# ╟─ac613f56-29ce-41a8-8338-6740a13e2da6
# ╟─5e963993-bcb3-42ac-a9b4-6dffe63b3787
# ╟─fc4ae1d4-b811-4e13-8e89-329532a4b923
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002