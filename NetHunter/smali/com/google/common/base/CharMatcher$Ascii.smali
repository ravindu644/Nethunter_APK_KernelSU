.class final Lcom/google/common/base/CharMatcher$Ascii;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Ascii"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/CharMatcher$Ascii;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$Ascii;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$Ascii;->INSTANCE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.ascii()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
