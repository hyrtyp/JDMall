.class public final Lcom/jd/lottery/lib/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final NumberPicker:[I = null

.field public static final NumberPicker_internalLayout:I = 0x8

.field public static final NumberPicker_internalMaxHeight:I = 0x5

.field public static final NumberPicker_internalMaxWidth:I = 0x7

.field public static final NumberPicker_internalMinHeight:I = 0x4

.field public static final NumberPicker_internalMinWidth:I = 0x6

.field public static final NumberPicker_selectionDivider:I = 0x1

.field public static final NumberPicker_selectionDividerHeight:I = 0x2

.field public static final NumberPicker_selectionDividersDistance:I = 0x3

.field public static final NumberPicker_solidColor:I = 0x0

.field public static final NumberPicker_virtualButtonPressedDrawable:I = 0x9

.field public static final stuan_title:[I = null

.field public static final stuan_title_drawableLeft:I = 0x0

.field public static final stuan_title_drawableRight:I = 0x1

.field public static final stuan_title_drawableTitle:I = 0x3

.field public static final stuan_title_textRight:I = 0x4

.field public static final stuan_title_textTitle:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1902
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jd/lottery/lib/R$styleable;->NumberPicker:[I

    .line 1913
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jd/lottery/lib/R$styleable;->stuan_title:[I

    .line 1918
    return-void

    .line 1902
    :array_0
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
    .end array-data

    .line 1913
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
