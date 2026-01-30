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

#### Sequential links

```
# Seqlinks
2

@[[Seqlinks]] come from [[Niklas Luhmann's Folgezettel]]@. They're a parent-child ID for your nodes that you can use to gradually and naturally build a tree graph of them.

## Seqlinks and identification
2/1

Seqlinks, when present, are the primary ID of a node - and their header becomes an alias. @[[Seqlinks]] can be used as [[Regular links]]@, and must be written in full, e.g [[1/2]].

2/2
# Structure and syntax

Seqlinks can be placed before or after a header, as long as the seqlink line is adjacent to the header line. A seqlink is the *full path*: @[[2/2]] is not [[2]]@.

### Allowed characters and elements
2/abc/[Random node](random-node.md)

Alphanumerical strings of any length and/or actual links can be used. The / character determines the start and end of a node. If [[Random node]] has seqlink [[2/abc/1]], "Random node" is its header used as an alias.

2/3
### Nesting and header hierarchy

A whole file can have multiple nodes. @[[Seqlinks]] make [[Nodes]]@ out of an ordinary header. Headers without seqlinks are parsed as part of their parent header.

#### Rellinks and seqlinks
2/3/a

@[[Rellinks]] belong to [[Nodes]]@. A rellink inside a marked header belongs to it. Rellinks in an unmarked header belong to the parent header of the latter.

## An example

@[[This rellink]] belongs to [[2]]@. @[[This rellink]] does not belong to [[2/3/a]]@
```

### Agnostic tools

_WIP. Check the roadmap!_

### Plugins and modules for your ecossystem

_WIP. Check the roadmap!_
