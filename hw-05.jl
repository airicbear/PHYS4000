### A Pluto.jl notebook ###
# v0.19.12

using Markdown
using InteractiveUtils

# ╔═╡ d988da4a-5ec3-11ed-3c6e-9fb1b9ec364f
begin
	using Unitful
	using UnitfulAstro
	using PhysicalConstants.CODATA2018: c_0, G, m_p, m_e, σ
md"""
# Homework 5

Eric Nguyen $\qquad$ TUID: 915786865 $\qquad$ November 18, 2022
"""
end

# ╔═╡ baee3cd1-8d93-4350-a1e4-3691483de637
let
md"""
# Problem 1

Derive the net (nuclear) Q value for the (a) entire proton-proton chain and (b) the entire CNO cycle.
"""
let
	m_1H = 1.00784u"u"
	m_2H = 2.01410177811u"u"
	m_3He = 3.0160293u"u"
	m_4He = 4.002603254u"u"
	m_8Be = 8.00530510u"u"
	m_12C = 12.0u"u"
	Qpp = (4m_1H - m_4He - 2m_e) * c_0^2 |> u"MeV"
	QCNO = (4m_1H - m_4He - 2m_e) * c_0^2 |> u"MeV"
	Qtα = (m_4He + m_4He - m_8Be) * c_0^2 + (m_4He + m_8Be - m_12C) * c_0^2 |> u"MeV"

	:Qpp => Qpp, :QCNO => QCNO, :Qtα => Qtα
end
md"""
### Problem 1

(a) The net result of proton--proton chain is

$4\text{p} → {}^4\text{He} + 2\text{e}^+ + 2ν_\text{e} + 2γ$

The net nuclear ``Q`` value for the entire proton--proton chain is then

$Q_{\text{pp}} = (4m({}^1\text{H}) - m({}^4\text{He}) - 2m_e) c^2 = 25.67 \text{ MeV}$

(b) The net result of the CNO cycle is

$4\text{p} → {}^4\text{He} + 2\text{e}^+ + 2ν_\text{e} + 3γ$

which gives the same net nuclear ``Q`` value as the entire proton--proton chain, ``Q_{\text{CNO}} = 25.67 \text{ MeV}``.
"""
end

# ╔═╡ 2aee6867-1255-4f51-a25a-d3d5aff20a3c
let
md"""
# Problem 2

Find the number of Solar neutrinos that pass through your body each second, using nuclear reaction rates in the Sun's core and the details of p-p chain (hint: you may use your result from problem [1] in the previous homework set (R&P 5.1) and your result from problem [1] in this homework set.)
"""
let
	P1 = 1.0u"Lsun" |> u"MeV/s"
	r1 = 1.0u"AU" |> u"m"
	t1 = 1.0u"s"
	E2 = 25.67u"MeV"
	A2 = 1.7u"m^2"
	
	n = (2P1/E2) * (A2 / (4π*r1^2))
end
md"""
### Problem 2

Each proton--proton chain reaction produces two neutrinos, so the Sun creates ``2L_⊙ / Q_{\text{pp}}`` neutrinos per second.
Assuming my body has a surface area of ``A = 1.7 \text{ m}^2`` and a distance ``d = 1 \text{ AU}`` away from the Sun, there are about

$\frac{2L_⊙}{Q_{\text{pp}}} \frac{A}{4πd^2} = 1.13 \times 10^{15} \text{ s}^{-1}$

neutrinos passing through my body each second.
"""
end

# ╔═╡ 53ec29cf-2bb7-49e1-99c3-e61a915d8065
let
md"""
# Problem 3 (R&P 17.1)

A protostellar cloud starts as a sphere of radius ``R = 4000 \text{ AU}`` and temperature ``T = 15 \text{ K}``.
If it emits blackbody radiation, what is its total luminosity?
What is the wavelength ``λ_p`` at which it emits the most radiation?
"""
let
	R = 4000u"AU"
	T = 15u"K"
	:L => 4π*R^2*σ*T^4 |> u"Lsun", :λp => (2900u"μm*K" / T)
end
md"""
### Problem 3

A spherical blackbody protostellar cloud with ``R = 4000 \text{ AU}`` and temperature ``T = 15 \text{ K}`` has a total luminosity of

$L = 4π R^2 σ_{\text{SB}} T^4 = 34 L_⊙$

The peak wavelength of the protostellar cloud is

$λ_p ≈ \frac{2900 \;μ\text{m K}}{T} = 193 \;μ\text{m}$
"""
end

# ╔═╡ fea0467b-a731-4d62-875f-4dade4a77e1b
let
md"""
# Problem 4 (R&P 17.2)

A Cepheid star in the Large Magellanic Cloud is observed to have an average apparent magnitude ``\overline{m}_V = 11.80`` and a period ``P = 95 \text{ days}``.
Compute the distance to the Large Magellanic Cloud, ignoring any effects due to dust.
"""
let
	mV = 11.80
	P = 95u"d"
	MV = -2.76*log10(P/10u"d") - 4.16
	d = 10^((mV - MV) / 5) * 10u"pc" |> u"ly"
end
md"""
### Problem 4

The absolute magnitude of the Cepheid star with average apparent magnitude ``\overline{m}_V = 11.80`` and period ``P = 95 \text{ days}`` in the Large Magellanic Cloud is

$\overline{M}_V = -2.76 \log(P / 10 \text{ days}) - 4.16 = -6.859$

The distance to the Large Magellanic Cloud, ignoring any dust effects, is then calculated by solving for ``d`` in the distance modulus equation

$\overline{m}_V - \overline{M}_V = 5\log(d/10\text{ pc}) \implies d = 53{,}910 \text{ pc} = 175{,}800 \text{ ly}$
"""
end

# ╔═╡ 6d2c1e72-0960-4b77-9d14-40e51f84439e
let
md"""
# Problem 5

SN 1987A was a Type-II supernova that was seen in the Large Magellanic cloud in February of 1987.
It is estimated to have emitted ``10^{58}`` neutrinos in total and is ``168{,}000 \text{ ly}`` away from our Solar system.
Calculate the number of neutrinos from this event that would have passed through your body, if this event were to have been observed today instead of 1987.
"""
let
	N = 1e58
	d = 168000.0u"ly" |> u"m"
	A = 1.7u"m^2"
	n = (N*A) / (4π*d^2)
end
md"""
### Problem 5

Assuming my body has a surface area of ``A = 1.7 \text{ m}^2``, the event of SN 1987A, given it emitted ``N = 10^{58}`` neutrinos from a distance ``d = 168{,}000 \text{ ly}``, would pass

$\frac{NA}{4πd^2} = 5.4 \times 10^{14}$

neutrinos through my body if it were to have been observed today instead of 1987.
"""
end

# ╔═╡ 3ae2076f-afae-4b33-a907-557e4e89dd1e
let
md"""
# Problem 6 (R&P 18.4)

What is the mean density of a ``1.5 M_⊙`` neutron star?
A carbon nucleus has a radius ``r ≈ 3 \times 10^{-15} \text{ m}``; what is its density?
What is the ratio of the two densities?
"""
let
	Mns = 1.5u"Msun"
	Rns = 11.0u"km" * (Mns / 1.4u"Msun")^(-1/3)
	Msun = 1.0u"Msun"
	Rsun = 1.0u"Rsun" |> u"km"
	ρns = (Mns / Msun) * (Rsun / Rns)^3 * 1410u"kg/m^3"

	MC = 12.011u"u" |> u"kg"
	r = 3e-15u"m"
	ρC = MC / ((4/3)π*r^3) |> u"kg/m^3"

	ρns / ρC
end
md"""
### Problem 6

A ``1.5M_⊙`` neutron star has a radius of about

$R_\text{ns} ≈ 11 \text{ km} \left(\frac{M_\text{ns}}{1.4M_⊙}\right)^{-1/3} = 1.5 \times 10^{-5} R_⊙ = 10.7 \text{ km}$

and thus a density of about

$ρ_\text{ns} = \frac{M_\text{ns}}{M_⊙} \left(\frac{R_⊙}{R_\text{ns}}\right)^3 ρ_⊙ ≈ 4.0 \times 10^{14} ρ_⊙ = 5.7 \times 10^{17} \text{ kg m}^{-3}$

A carbon nucleus with radius ``r ≈ 3 \times 10^{-15} \text{ m}`` and mass ``m_\text{C} = 12 \text{ u}`` has a density of 

$ρ_\text{C} = \frac{m_\text{C}}{\frac{4}{3}πr^3} = 1.8 \times 10^{17} \text{ kg m}^{-3}$

The ratio of the two densities is

$\frac{ρ_{\text{ns}}}{ρ_\text{C}} = 3.3$
"""
end

# ╔═╡ 1e59494c-17f6-4925-a120-2ca15c46f327
let
md"""
# Problem 7

Find the surface gravity, in units of Earth "``g``"s for: The Sun; A ``1 M_⊙`` white dwarf; a ``1.5 M_⊙`` neutron star; and a ``3.0 M_⊙`` black hole.
"""
let
	Mwd = 1u"Msun"
	Rwd = 0.01u"Rsun" * (Mwd / 0.7u"Msun")^(-1/3)
	gwd = G * Mwd / (Rwd^2) |> u"m/s^2"
	
	Mns = 1.5u"Msun"
	Rns = 11u"km" * (Mns / 1.4u"Msun")^(-1/3)
	gns = G * Mns / (Rns^2) |> u"m/s^2"

	Mbh = 3u"Msun"
	Rbh = 2*G*Mbh / (c_0^2) |> u"Rsun"
	gbh = G * Mbh / (Rbh^2) |> u"m/s^2"
end
md"""
### Problem 7

A white dwarf with mass ``M_\text{wd} = 1 M_⊙`` has a radius of about

$R_\text{wd} = 0.01 R_⊙ \left(\frac{M_\text{wd}}{0.7M_⊙}\right)^{-1/3} = 0.0089 R_⊙ = 6{,}200 \text{ km}$

The surface gravity of the ``1M_⊙`` white dwarf is then

$g_\text{wd} = \frac{GM_\text{wd}}{{R_\text{wd}}^2} = 3.5 \times 10^6 \text{ m s}^{-2}$

A neutron star with mass ``M_\text{ns} = 1.5M_⊙`` has a radius of about ``R_\text{ns} = 10.7 \text{ km}``, as calculated in Problem 6.
Thus, the neutron star has a surface gravity of

$g_\text{ns} = \frac{GM_\text{ns}}{{R_\text{ns}}^2} = 1.7 \times 10^{12} \text{ m s}^{-2}$

A black hole with mass ``M_\text{bh} = 3.0 M_⊙`` has a radius of

$R_\text{bh} = \frac{2GM_\text{bh}}{c^2} = 1.3 \times 10^{-5} R_⊙ = 8.9 \text{ km}$

The surface gravity of the ``3.0 M_⊙`` black hole is then

$g_\text{bh} = \frac{GM_\text{bh}}{{R_\text{bh}}^2} = 5.1 \times 10^{12} \text{ m s}^{-2}$
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
Unitful = "~1.12.0"
UnitfulAstro = "~1.2.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "e4b5f219f887899d98e59029a672b3730e2b7083"

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
git-tree-sha1 = "3ca828fe1b75fa84b021a7860bd039eaea84d2f2"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.3.0"

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
git-tree-sha1 = "d12e612bba40d189cead6ff857ddb67bd2e6a387"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.1"

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
git-tree-sha1 = "d57a4ed70b6f9ff1da6719f5f2713706d57e0d66"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.12.0"

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
# ╟─d988da4a-5ec3-11ed-3c6e-9fb1b9ec364f
# ╟─baee3cd1-8d93-4350-a1e4-3691483de637
# ╟─2aee6867-1255-4f51-a25a-d3d5aff20a3c
# ╟─53ec29cf-2bb7-49e1-99c3-e61a915d8065
# ╟─fea0467b-a731-4d62-875f-4dade4a77e1b
# ╟─6d2c1e72-0960-4b77-9d14-40e51f84439e
# ╟─3ae2076f-afae-4b33-a907-557e4e89dd1e
# ╟─1e59494c-17f6-4925-a120-2ca15c46f327
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
