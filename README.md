# Zettelschrift

```
# Laplanchean unconscious
1/4/10/1

[[Jean Laplanche]] crafted an hypothesis/redefinition of the [[unconscious|Psychoanalytic unconscious]] by means of a %[[General seduction theory]] that resembles but ultimately goes against Lacan's conception of the unconscious' origin and foundations% @[[General seduction theory]] opposes [[Lacanian subject]]@ by building a well-defined [[etiology|Etiology]] and proposing more clear connections between his etiology and actual [[symptoms as they appear clinically|Unconscious formations]].
In a sense, this means @[[Jean Laplanche]] is a rival of [[Jacques Lacan]]@, albeit one highly indebted to the later.

@is useful for@ [[Testing psychoanalysis]]
@example of@ [[Well-formed psychoanalytic unconscious hypothesis]]
@opposes@ [[Lacanian unconscious]]
@todo [[Notes to be expanded]]
```
<p align="center">Example of Zettelschrift for CommonMark</p>

## Introduction

**Zettelschrift** ```ztsch``` is an agnostic, minimal semantic extension protocol for commonly used lightweight markup languages, such as Markdown, Org, and Asciidoc. Its main, overt purpose is to add a small set of helpful but rarely present features for the formats used by many plain-text personal knowledge management systems, while maintaining portability, atomicity, and a balance between readability and expressiveness. It is *not* meant to _replace_ your preferred markup; it can be used unobtrusively within it, degrading gracefully to regular, readable text when no ```ztsch``` tool is used for parsing. Agnostic tools shall be provided for parsing, converting, and visualizing documents hosting ```ztsch```.

_This is a very early WIP, and most importantly, an experiment._

## Features

### Markup

#### Relational links

```
This entire README @has an arbitrary relation with@ [[Another node]]

@[A nodd](jean-laplanche) has a relation with [Another node](jacques-lacan)@

%Relational links can have *full sentences* as _aliases_ for writing a relationship in prose too!% @[[Rellink alias]] describes [[Rellink]]@

%Zettelschrift does not implement a syntax for regular links - it parses and uses the host language's own syntax% @[[org][Org-mode]] can host [[ztsch]]@

%Rellinks' predicates can be themselves transformed into nodes, either through ztsch tools or explicitly using the host language's syntax% @[[A]] [[refutes]] [[B]]@

Zettelschrift's tools can also interpret an @[[Entire rellink]] as [[a node]]@. If you create a node titled "Entire rellink as a node" without syntax markers, it becomes the node for that rellink.
```

#### Sequential links (Folgezettel)

```
# Just like many systems for Zettelkasten, you can identify nodes with numbers and letters,
1

# and by writing into another file like this, you create a sequential link (that also acts as a identifier)
1/a

# Any alphanumerical ASCII characters work!
1/a/300/foo/bar

# If a file has multiple headers and no Folgezettel, but other ztsch syntax, it is interpreted as a single node

# You can place multiple nodes into a single document too!
1/b

## Marked headers are interpreted as nodes themselves, fully independent from others, even if they are subheadings
1/c

## But unmarked headers and its contents are interpreted as being part of the top node

@[[1/b]] is not equal to [[1/c]]@

@[[1/b]] does not contain [[1/c relinks]]@

@[[Sequential links]] are aliased as [[Links]]@
```

### Agnostic tools

_WIP. Check the roadmap!_

### Plugins and modules for your ecossystem

_WIP. Check the roadmap!_
