.class public final Landroidx/compose/foundation/lazy/Lazy_androidKt;
.super Ljava/lang/Object;
.source "Lazy.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "getDefaultLazyKeyFor",
        "",
        "index",
        "",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getDefaultLazyKeyFor(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/DefaultLazyKey;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/DefaultLazyKey;-><init>(I)V

    return-object v0
.end method
