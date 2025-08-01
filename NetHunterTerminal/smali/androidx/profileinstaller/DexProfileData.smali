.class Landroidx/profileinstaller/DexProfileData;
.super Ljava/lang/Object;
.source "DexProfileData.java"


# instance fields
.field final classSetSize:I

.field final classes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final dexChecksum:J

.field final hotMethodRegionSize:I

.field final key:Ljava/lang/String;

.field final methods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final numMethodIds:I


# direct methods
.method constructor <init>(Ljava/lang/String;JIIILjava/util/HashSet;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "dexChecksum",
            "classSetSize",
            "hotMethodRegionSize",
            "numMethodIds",
            "classes",
            "methods"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIII",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/profileinstaller/DexProfileData;->key:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/profileinstaller/DexProfileData;->dexChecksum:J

    iput p4, p0, Landroidx/profileinstaller/DexProfileData;->classSetSize:I

    iput p5, p0, Landroidx/profileinstaller/DexProfileData;->hotMethodRegionSize:I

    iput p6, p0, Landroidx/profileinstaller/DexProfileData;->numMethodIds:I

    iput-object p7, p0, Landroidx/profileinstaller/DexProfileData;->classes:Ljava/util/HashSet;

    iput-object p8, p0, Landroidx/profileinstaller/DexProfileData;->methods:Ljava/util/HashMap;

    return-void
.end method
