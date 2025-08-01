.class public final Ljava8/nio/file/attribute/AclEntry;
.super Ljava/lang/Object;
.source "AclEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/nio/file/attribute/AclEntry$Builder;
    }
.end annotation


# instance fields
.field private final flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava8/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hash:I

.field private final perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava8/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava8/nio/file/attribute/AclEntryType;

.field private final who:Ljava8/nio/file/attribute/UserPrincipal;


# direct methods
.method private constructor <init>(Ljava8/nio/file/attribute/AclEntryType;Ljava8/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "who",
            "perms",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/nio/file/attribute/AclEntryType;",
            "Ljava8/nio/file/attribute/UserPrincipal;",
            "Ljava/util/Set<",
            "Ljava8/nio/file/attribute/AclEntryPermission;",
            ">;",
            "Ljava/util/Set<",
            "Ljava8/nio/file/attribute/AclEntryFlag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/nio/file/attribute/AclEntry;->type:Ljava8/nio/file/attribute/AclEntryType;

    iput-object p2, p0, Ljava8/nio/file/attribute/AclEntry;->who:Ljava8/nio/file/attribute/UserPrincipal;

    iput-object p3, p0, Ljava8/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iput-object p4, p0, Ljava8/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava8/nio/file/attribute/AclEntryType;Ljava8/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava8/nio/file/attribute/AclEntry$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava8/nio/file/attribute/AclEntry;-><init>(Ljava8/nio/file/attribute/AclEntryType;Ljava8/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static hash(ILjava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "h",
            "o"
        }
    .end annotation

    mul-int/lit8 p0, p0, 0x7f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static newBuilder()Ljava8/nio/file/attribute/AclEntry$Builder;
    .locals 7

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    new-instance v6, Ljava8/nio/file/attribute/AclEntry$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/nio/file/attribute/AclEntry$Builder;-><init>(Ljava8/nio/file/attribute/AclEntryType;Ljava8/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava8/nio/file/attribute/AclEntry$1;)V

    return-object v6
.end method

.method public static newBuilder(Ljava8/nio/file/attribute/AclEntry;)Ljava8/nio/file/attribute/AclEntry$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    new-instance v6, Ljava8/nio/file/attribute/AclEntry$Builder;

    iget-object v1, p0, Ljava8/nio/file/attribute/AclEntry;->type:Ljava8/nio/file/attribute/AclEntryType;

    iget-object v2, p0, Ljava8/nio/file/attribute/AclEntry;->who:Ljava8/nio/file/attribute/UserPrincipal;

    iget-object v3, p0, Ljava8/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iget-object v4, p0, Ljava8/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/nio/file/attribute/AclEntry$Builder;-><init>(Ljava8/nio/file/attribute/AclEntryType;Ljava8/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava8/nio/file/attribute/AclEntry$1;)V

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ob"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    instance-of v2, p1, Ljava8/nio/file/attribute/AclEntry;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ljava8/nio/file/attribute/AclEntry;

    iget-object v2, p0, Ljava8/nio/file/attribute/AclEntry;->type:Ljava8/nio/file/attribute/AclEntryType;

    iget-object v3, p1, Ljava8/nio/file/attribute/AclEntry;->type:Ljava8/nio/file/attribute/AclEntryType;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Ljava8/nio/file/attribute/AclEntry;->who:Ljava8/nio/file/attribute/UserPrincipal;

    iget-object v3, p1, Ljava8/nio/file/attribute/AclEntry;->who:Ljava8/nio/file/attribute/UserPrincipal;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Ljava8/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iget-object v3, p1, Ljava8/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Ljava8/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    iget-object p1, p1, Ljava8/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public flags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava8/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava8/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava8/nio/file/attribute/AclEntry;->hash:I

    if-eqz v0, :cond_0

    iget v0, p0, Ljava8/nio/file/attribute/AclEntry;->hash:I

    return v0

    :cond_0
    iget-object v0, p0, Ljava8/nio/file/attribute/AclEntry;->type:Ljava8/nio/file/attribute/AclEntryType;

    invoke-virtual {v0}, Ljava8/nio/file/attribute/AclEntryType;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava8/nio/file/attribute/AclEntry;->who:Ljava8/nio/file/attribute/UserPrincipal;

    invoke-static {v0, v1}, Ljava8/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava8/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava8/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava8/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava8/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava8/nio/file/attribute/AclEntry;->hash:I

    iget v0, p0, Ljava8/nio/file/attribute/AclEntry;->hash:I

    return v0
.end method

.method public permissions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava8/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava8/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public principal()Ljava8/nio/file/attribute/UserPrincipal;
    .locals 1

    iget-object v0, p0, Ljava8/nio/file/attribute/AclEntry;->who:Ljava8/nio/file/attribute/UserPrincipal;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava8/nio/file/attribute/AclEntry;->who:Ljava8/nio/file/attribute/UserPrincipal;

    invoke-interface {v1}, Ljava8/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava8/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava8/nio/file/attribute/AclEntryPermission;

    invoke-virtual {v3}, Ljava8/nio/file/attribute/AclEntryPermission;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava8/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava8/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava8/nio/file/attribute/AclEntryFlag;

    invoke-virtual {v3}, Ljava8/nio/file/attribute/AclEntryFlag;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Ljava8/nio/file/attribute/AclEntry;->type:Ljava8/nio/file/attribute/AclEntryType;

    invoke-virtual {v1}, Ljava8/nio/file/attribute/AclEntryType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava8/nio/file/attribute/AclEntryType;
    .locals 1

    iget-object v0, p0, Ljava8/nio/file/attribute/AclEntry;->type:Ljava8/nio/file/attribute/AclEntryType;

    return-object v0
.end method
