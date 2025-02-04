.class public Lcom/android/internal/util/MimeIconUtils;
.super Ljava/lang/Object;
.source "MimeIconUtils.java"


# static fields
.field private static sMimeIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    .line 41
    const v0, 0x1080349

    .line 42
    .local v0, "icon":I
    const-string v1, "application/vnd.android.package-archive"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 45
    const v0, 0x108034a

    .line 46
    const-string v1, "application/ogg"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 47
    const-string v1, "application/x-flac"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 50
    const v0, 0x108034b

    .line 51
    const-string v1, "application/pgp-keys"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 52
    const-string v1, "application/pgp-signature"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 53
    const-string v1, "application/x-pkcs12"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 54
    const-string v1, "application/x-pkcs7-certreqresp"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 55
    const-string v1, "application/x-pkcs7-crl"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 56
    const-string v1, "application/x-x509-ca-cert"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 57
    const-string v1, "application/x-x509-user-cert"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 58
    const-string v1, "application/x-pkcs7-certificates"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 59
    const-string v1, "application/x-pkcs7-mime"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 60
    const-string v1, "application/x-pkcs7-signature"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 63
    const v0, 0x108034c

    .line 64
    const-string v1, "application/rdf+xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 65
    const-string v1, "application/rss+xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 66
    const-string v1, "application/x-object"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 67
    const-string v1, "application/xhtml+xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 68
    const-string v1, "text/css"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 69
    const-string v1, "text/html"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 70
    const-string v1, "text/xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 71
    const-string v1, "text/x-c++hdr"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 72
    const-string v1, "text/x-c++src"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 73
    const-string v1, "text/x-chdr"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 74
    const-string v1, "text/x-csrc"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 75
    const-string v1, "text/x-dsrc"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 76
    const-string v1, "text/x-csh"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 77
    const-string v1, "text/x-haskell"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 78
    const-string v1, "text/x-java"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 79
    const-string v1, "text/x-literate-haskell"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 80
    const-string v1, "text/x-pascal"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 81
    const-string v1, "text/x-tcl"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 82
    const-string v1, "text/x-tex"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 83
    const-string v1, "application/x-latex"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 84
    const-string v1, "application/x-texinfo"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 85
    const-string v1, "application/atom+xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 86
    const-string v1, "application/ecmascript"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 87
    const-string v1, "application/json"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 88
    const-string v1, "application/javascript"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 89
    const-string v1, "application/xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 90
    const-string v1, "text/javascript"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 91
    const-string v1, "application/x-javascript"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 94
    const v0, 0x108034d

    .line 95
    const-string v1, "application/mac-binhex40"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 96
    const-string v1, "application/rar"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 97
    const-string v1, "application/zip"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 98
    const-string v1, "application/x-apple-diskimage"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 99
    const-string v1, "application/x-debian-package"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 100
    const-string v1, "application/x-gtar"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 101
    const-string v1, "application/x-iso9660-image"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 102
    const-string v1, "application/x-lha"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 103
    const-string v1, "application/x-lzh"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 104
    const-string v1, "application/x-lzx"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 105
    const-string v1, "application/x-stuffit"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 106
    const-string v1, "application/x-tar"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 107
    const-string v1, "application/x-webarchive"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 108
    const-string v1, "application/x-webarchive-xml"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 109
    const-string v1, "application/gzip"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 110
    const-string v1, "application/x-7z-compressed"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 111
    const-string v1, "application/x-deb"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 112
    const-string v1, "application/x-rar-compressed"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 115
    const v0, 0x108034e

    .line 116
    const-string v1, "text/x-vcard"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 117
    const-string v1, "text/vcard"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 120
    const v0, 0x1080350

    .line 121
    const-string v1, "text/calendar"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 122
    const-string v1, "text/x-vcalendar"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 125
    const v0, 0x1080353

    .line 126
    const-string v1, "application/x-font"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 127
    const-string v1, "application/font-woff"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 128
    const-string v1, "application/x-font-woff"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 129
    const-string v1, "application/x-font-ttf"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 132
    const v0, 0x1080355

    .line 133
    const-string v1, "application/vnd.oasis.opendocument.graphics"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 134
    const-string v1, "application/vnd.oasis.opendocument.graphics-template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 135
    const-string v1, "application/vnd.oasis.opendocument.image"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 136
    const-string v1, "application/vnd.stardivision.draw"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 137
    const-string v1, "application/vnd.sun.xml.draw"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 138
    const-string v1, "application/vnd.sun.xml.draw.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 141
    const v0, 0x1080356

    .line 142
    const-string v1, "application/pdf"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 145
    const v0, 0x1080358

    .line 146
    const-string v1, "application/vnd.stardivision.impress"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 147
    const-string v1, "application/vnd.sun.xml.impress"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 148
    const-string v1, "application/vnd.sun.xml.impress.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 149
    const-string v1, "application/x-kpresenter"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 150
    const-string v1, "application/vnd.oasis.opendocument.presentation"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 153
    const v0, 0x1080359

    .line 154
    const-string v1, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 155
    const-string v1, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 156
    const-string v1, "application/vnd.stardivision.calc"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 157
    const-string v1, "application/vnd.sun.xml.calc"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 158
    const-string v1, "application/vnd.sun.xml.calc.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 159
    const-string v1, "application/x-kspread"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 162
    const v0, 0x108034f

    .line 163
    const-string v1, "application/vnd.oasis.opendocument.text"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 164
    const-string v1, "application/vnd.oasis.opendocument.text-master"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 165
    const-string v1, "application/vnd.oasis.opendocument.text-template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 166
    const-string v1, "application/vnd.oasis.opendocument.text-web"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 167
    const-string v1, "application/vnd.stardivision.writer"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 168
    const-string v1, "application/vnd.stardivision.writer-global"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 169
    const-string v1, "application/vnd.sun.xml.writer"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 170
    const-string v1, "application/vnd.sun.xml.writer.global"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 171
    const-string v1, "application/vnd.sun.xml.writer.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 172
    const-string v1, "application/x-abiword"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 173
    const-string v1, "application/x-kword"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 176
    const v0, 0x108035b

    .line 177
    const-string v1, "application/x-quicktimeplayer"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 178
    const-string v1, "application/x-shockwave-flash"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 181
    const v0, 0x108035c

    .line 182
    const-string v1, "application/msword"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 183
    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 184
    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 187
    const v0, 0x1080351

    .line 188
    const-string v1, "application/vnd.ms-excel"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 189
    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 190
    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 193
    const v0, 0x1080357

    .line 194
    const-string v1, "application/vnd.ms-powerpoint"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 195
    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 196
    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 197
    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-static {v1, v0}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    .line 198
    .end local v0    # "icon":I
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;I)V
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "resId"    # I

    .line 32
    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static loadMimeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 201
    const-string v0, "vnd.android.document/directory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const v0, 0x1080352

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 207
    .local v0, "resId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 211
    :cond_1
    if-nez p1, :cond_2

    .line 213
    const/4 v1, 0x0

    return-object v1

    .line 217
    :cond_2
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 218
    .local v1, "typeOnly":Ljava/lang/String;
    const-string v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    const v2, 0x108034a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 220
    :cond_3
    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    const v2, 0x1080355

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 222
    :cond_4
    const-string v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 223
    const v2, 0x108035a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 224
    :cond_5
    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 225
    const v2, 0x108035b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 227
    :cond_6
    const v2, 0x1080354

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method
