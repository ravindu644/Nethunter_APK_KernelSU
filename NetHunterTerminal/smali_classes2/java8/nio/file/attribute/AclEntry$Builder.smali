.class public final Ljava8/nio/file/attribute/AclEntry$Builder;
.super Ljava/lang/Object;
.source "AclEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/nio/file/attribute/AclEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava8/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation
.end field

.field private perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava8/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava8/nio/file/attribute/AclEntryType;

.field private who:Ljava8/nio/file/attribute/UserPrincipal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava8/nio/file/attribute/AclEntry;

    return-void
.end method

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

    iput-object p1, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->type:Ljava8/nio/file/attribute/AclEntryType;

    iput-object p2, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->who:Ljava8/nio/file/attribute/UserPrincipal;

    iput-object p3, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    iput-object p4, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava8/nio/file/attribute/AclEntryType;Ljava8/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava8/nio/file/attribute/AclEntry$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava8/nio/file/attribute/AclEntry$Builder;-><init>(Ljava8/nio/file/attribute/AclEntryType;Ljava8/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static checkSet(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "set",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Ljava8/nio/file/attribute/AclEntry;
    .locals 7

    iget-object v1, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->type:Ljava8/nio/file/attribute/AclEntryType;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->who:Ljava8/nio/file/attribute/UserPrincipal;

    if-eqz v2, :cond_0

    new-instance v6, Ljava8/nio/file/attribute/AclEntry;

    iget-object v3, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    iget-object v4, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/nio/file/attribute/AclEntry;-><init>(Ljava8/nio/file/attribute/AclEntryType;Ljava8/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava8/nio/file/attribute/AclEntry$1;)V

    return-object v6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing who component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing type component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlags(Ljava/util/Set;)Ljava8/nio/file/attribute/AclEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava8/nio/file/attribute/AclEntryFlag;",
            ">;)",
            "Ljava8/nio/file/attribute/AclEntry$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    const-class v0, Ljava8/nio/file/attribute/AclEntryFlag;

    invoke-static {p1, v0}, Ljava8/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    :goto_0
    iput-object p1, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    return-object p0
.end method

.method public varargs setFlags([Ljava8/nio/file/attribute/AclEntryFlag;)Ljava8/nio/file/attribute/AclEntry$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flags"
        }
    .end annotation

    const-class v0, Ljava8/nio/file/attribute/AclEntryFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    return-object p0
.end method

.method public setPermissions(Ljava/util/Set;)Ljava8/nio/file/attribute/AclEntry$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "perms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava8/nio/file/attribute/AclEntryPermission;",
            ">;)",
            "Ljava8/nio/file/attribute/AclEntry$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    const-class v0, Ljava8/nio/file/attribute/AclEntryPermission;

    invoke-static {p1, v0}, Ljava8/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    :goto_0
    iput-object p1, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    return-object p0
.end method

.method public varargs setPermissions([Ljava8/nio/file/attribute/AclEntryPermission;)Ljava8/nio/file/attribute/AclEntry$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "perms"
        }
    .end annotation

    const-class v0, Ljava8/nio/file/attribute/AclEntryPermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    return-object p0
.end method

.method public setPrincipal(Ljava8/nio/file/attribute/UserPrincipal;)Ljava8/nio/file/attribute/AclEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "who"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->who:Ljava8/nio/file/attribute/UserPrincipal;

    return-object p0
.end method

.method public setType(Ljava8/nio/file/attribute/AclEntryType;)Ljava8/nio/file/attribute/AclEntry$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ljava8/nio/file/attribute/AclEntry$Builder;->type:Ljava8/nio/file/attribute/AclEntryType;

    return-object p0
.end method
